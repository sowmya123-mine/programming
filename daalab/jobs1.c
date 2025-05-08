#include<stdio.h>
void sequence(int d[5],int p[5],int n,int max);
void main()
{
 int n,d[5],p[5],temp,dline,max;
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
      if(p[i]<p[j])
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
 for(int i=0;i<n;i++)
  {
    for(int j=i+1;j<n;j++)
     {
      if(d[i]<d[j])
       {
        temp=d[i];
        d[i]=d[j];
        d[j]=temp;
       }
      }
    }
max=d[1];
printf("the max deadline is\n");
printf("%d",max);
sequence(d,p,n,max);
printf("%d",d[i]);
/*
printf("the profits and corresponding deadlines\n");
for(int i=0;i<n;i++)
{
 printf("deadline%d:\tprofit%d:\t",d[i],p[i]);
}*/
}
void sequence(int d[5],int p[5],int n,int max)
{



