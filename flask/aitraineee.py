#!/usr/bin/env python
# coding: utf-8

# In[ ]:


#import neccessary packages
import cv2
import mediapipe as mp
import numpy as np
import time
mp_drawing=mp.solutions.drawing_utils
mp_pose=mp.solutions.pose
#calculate angles
def calculate_angle(a,b,c):
    a=np.array(a)#first
    b=np.array(b)#mid
    c=np.array(c)#end
    radians=np.arctan2(c[1]-b[1],c[0]-b[0])-np.arctan2(a[1]-b[1],a[0]-b[0])
    angle=np.abs(radians*180.0/np.pi)
    if angle>180.0:
        angle=360-angle
    return angle
#make detections
cap=cv2.VideoCapture(0)
#curl counter variables
counter=0
stage=None
# Timer variables
start_time = None
exercise_duration = int(input("enter a number")) # Set the exercise duration in seconds (e.g., 60 seconds)
#setup media pipe instance for detecting and tracking pose landmarks
with mp_pose.Pose(min_detection_confidence=0.5,min_tracking_confidence=0.5)as pose:
    while cap.isOpened():
        ret,frame=cap.read()
        
        #recolor image to RGB
        image=cv2.cvtColor(frame,cv2.COLOR_BGR2RGB)
        image.flags.writeable=False
        
        #make detection
        results=pose.process(image)
        
        #recolor back to BGR
        image.flags.writeable=True
        image=cv2.cvtColor(image,cv2.COLOR_RGB2BGR)
        
        #extract landmarks
        try:
            landmarks=results.pose_landmarks.landmark
           #get coordinates
            shoulder=[landmarks[mp_pose.PoseLandmark.LEFT_SHOULDER.value].x,landmarks[mp_pose.PoseLandmark.LEFT_SHOULDER.value].y]
            elbow=[landmarks[mp_pose.PoseLandmark.LEFT_ELBOW.value].x,landmarks[mp_pose.PoseLandmark.LEFT_ELBOW.value].y]
            wrist=[landmarks[mp_pose.PoseLandmark.LEFT_WRIST.value].x,landmarks[mp_pose.PoseLandmark.LEFT_WRIST.value].y]
            #calculate angle
            angle= calculate_angle(shoulder,elbow,wrist)
           #visualize
            cv2.putText(image,str(angle),
                   tuple(np.multiply(elbow,[640,480]).astype(int)),
                        cv2.FONT_HERSHEY_SIMPLEX,0.5,(255,255,255),2,cv2.LINE_AA
                       )
    #curl counter logic
            if angle>160:
                stage="down"
            if angle<30 and stage=="down":
                stage="up"
                counter+=1
                print(counter)
            if counter == 1 and start_time is None:
                start_time = time.time()

            # Check if the exercise duration is exceeded
            if start_time is not None:
                elapsed_time = time.time() - start_time
                remaining_time = max(0, exercise_duration - elapsed_time)
                cv2.putText(image, f"Time left: {remaining_time:.1f} s",
                            (10, 100), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 255), 2, cv2.LINE_AA)

                if elapsed_time > exercise_duration:
                    break

        except:
            pass
        #render curl counter
        #setup status box
        cv2.rectangle(image,(0,0),(225,73),(245,117,16),-1)
        #rep data
        cv2.putText(image,'REPS',(15,12),
                   cv2.FONT_HERSHEY_SIMPLEX,0.5,(0,0,0,),1,cv2.LINE_AA)
        cv2.putText(image,str(counter),
                   (10,60),
                   cv2.FONT_HERSHEY_SIMPLEX,2,(0,0,0),1,cv2.LINE_AA)
        #render detections
        mp_drawing.draw_landmarks(image,results.pose_landmarks,mp_pose.POSE_CONNECTIONS,
                                 mp_drawing.DrawingSpec(color=(245,117,66),thickness=2,circle_radius=2),
                                 mp_drawing.DrawingSpec(color=(245,66,230),thickness=2,circle_radius=2))
        cv2.imshowai fint("mediapipe feed",image)
        if cv2.waitKey(10) & 0XFF == ord('q'):
            break
    cap.release()
    cv2.destroyAllWindows()

