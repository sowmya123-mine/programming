#include<stdio.h>
void main()
{
int p[20],w[20],n,temp,rbg,bg,i,j;
float x,sum=0.0;
printf("enter the bag size");
scanf("%d",&bg);
printf("enter the n value");
scanf("%d",&n);
printf("enter the profits");
for(i=0;i<n;i++)
{
 scanf("%d",&p[i]);
}
printf("enter the weights");
for(i=0;i<n;i++)
{
 scanf("%d",&w[i]);
}
for(i=0;i<n;i++)
{
 temp=p[i];
 j=i-1;
 while((temp<p[j])&&(j>=0))
 {
 p[j+1]=p[j];
 j=j-1;
 }
 p[j+1]=temp;
 }
 printf("the sorted profits");
 for(i=0;i<n;i++)
 {
 printf("%d\n",p[i]);
 }
 printf("the weights are:\n");
 for(i=0;i<n;i++)
 {
 printf("%d\n",w[i]);
 }
 for(i=n-1;i>=0;i--)
 {
 if(bg<=0)
 {
 break;
 }
 if(bg<w[i])
 {
 x=(float)bg/w[i];
 }
 else
 {
 x=1;
 }
 bg=bg-w[i];
 sum=sum+p[i]*x;
 }
 printf("%f\n",sum);
}
