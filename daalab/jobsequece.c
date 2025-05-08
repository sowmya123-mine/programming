//job sequencing with deadlines
#include<stdio.h>
typedef struct job{
    char jname[10];
    int profit;
    int dline;
}jobs;

void main(){
    int n;
    printf("Enter number of jobs:");
    scanf("%d",&n);
    jobs j[n];
    int dmax;
    for(int i=0;i<n;i++){
        printf("Enter job name:");
        scanf("%s",j[i].jname);
        printf("Enter %s profit:",j[i].jname);
        scanf("%d",&j[i].profit);
        printf("Enter %s deadline:",j[i].jname);
        scanf("%d",&j[i].dline);
        dmax=(dmax>=j[i].dline)?dmax:j[i].dline;
    }
    int timeslot[dmax],count=0,max_profit=0;
    for(int i=0;i<dmax;timeslot[i++]=0);//initializing the time slot
    //sorting the jobs in descending order of profits(using the quick sort algorithm)
    for(int i=1,k;i<n;i++){
        jobs temp=j[i];
        k=i-1;
        while(k>=0 && j[k].profit<temp.profit)
        {
                j[k+1]=j[k];
                k--;
        }
        j[k+1]=temp;
    }
    for(int i=0;i<n && count<dmax;i++)//assinging the jobs in time slot
    {
        if(timeslot[j[i].dline-1]!=0){
            timeslot[j[i].dline-1]=i;
            count++;
            max_profit+=j[i].profit;

        }
        else{
            for(int k=j[i].dline-1;k>=0;k--){
                if(timeslot[k]==0){
                    timeslot[k]=j[i].dline-1;
                    count++;
                    max_profit+=j[i].profit;
                    break;
                }
            }
        }
    }
    //the selected job sequence is
    printf("The selected jobs in sequence are:\nJob name\t deadline\tprofit\n");
    for(int i=0;i<dmax;i++){
        printf("%s\t%d\t%d\n",j[timeslot[i]].jname,j[timeslot[i]].dline,j[timeslot[i]].profit);
    }
    printf("The max-profit attained is:%d \n",max_profit);
}