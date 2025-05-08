#include<stdio.h>
int max(int d[],int n);
void maxpro(int dline,int d[],int p[],int n);
void main()
{
 int n,d[5],p[5],temp,dline;
 printf("enter the no of jobs\n");
 scanf("%d",&n);
 printf("enter the profits\n");
 for(int i=0;i<n;i++)
 {
 scanf("%d",&p[i]);
 }
 for(int i=0;i<n;i++)
  {
    for(int j=i+1;j<n;j++)
     {
      if(p[i]>p[j])
       {
        temp=p[i];
        p[i]=p[j];
        p[j]=temp;
       }
      }
    }
 printf("after sort the profit is\n");
 for(int i=0;i<n;i++)
 {
  printf("%d\n",p[i]);
 }
 printf("enter the deadline\n");
 for(int i=0;i<n;i++)
 {
 scanf("%d",&d[i]);
 }
  dline=max(d,n);
  printf("%d\n",dline);
  maxpro(dline,d,p,n);
 }   
int max(int d[],int n)
{
int i,j,temp;
for(i=0;i<n;i++)
 {
  for(j=i+1;j<n;j++)
   {
    if(d[i]>d[j])
    {
     temp=d[i];
     d[i]=d[j];
     d[j]=temp;
    }
  }
}
return d[n-1];
}
void maxpro(int dline,int d[],int p[],int n)
{
 int timeslot[dline],k=0,i,j;
 timeslot[dline]=-1;
 for(i=n-1;i>=0;i--)
  {
  if(k>=0)
  {
   k=d[i];
  }
  if(k==timeslot[i])
  {
   if(timeslot[i]==-1)
    {
     timeslot[i]=p[i];
    }
   }
    k=k-1;
 }
 printf("the reqired array is\n");
 for(i=n-1;i>=0;i--)
 {
  printf("%d\n",timeslot[i]);
 }
}
    
     
  
 

