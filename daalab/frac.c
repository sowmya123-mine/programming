#include<stdio.h>
void knapsack(int n,float weight[],float profit[],float capacity);
void main()
{
float weight[20],profit[20],capacity;
int num,i,j;
//ratio pi/wi
float ratio[20],temp;
printf("enter the no of elements");
scanf("%d",&num);
printf("enter the weights of each object");
for(i=0;i<num;i++)
{
scanf("%f",&weight[i]);
}
printf("enter the profit of each object");
for(i=0;i<num;i++)
{
scanf("%f",&profit[i]);
}
printf("enter the capacity of knapsack");
scanf("%f",&capacity);
for(i=0;i<num;i++)
{
ratio[i]=profit[i]/weight[i];
}
for(i=0;i<num;i++)
{
for(j=i+1;j<num;j++)
{
if(ratio[i]<ratio[j])
 {
  temp=ratio[j];
  ratio[j]=ratio[i];
  ratio[i]=temp;
  
  temp=weight[j];
  weight[j]=weight[i];
  weight[i]=temp;
  
  temp=profit[j];
  profit[j]=profit[i];
  profit[i]=temp;
  }
 }
}
knapsack(num,weight,profit,capacity);
}
void knapsack(int n,float weight[],float profit[],float capacity)
 {
   float x[20],tp=0.0;
   int i,j,u;
   u=capacity;
   for(i=0;i<n;i++)
   x[i]=0.0;
   for(i=0;i<n;i++)
  {
   if(weight[i]<=u)
   {
    x[i]=1.0;
    u=u-weight[i];
   }
 else
 {
 x[i]=u/(float)(weight[i]);
 }
 printf("the resultant vector\n");
 for(i=0;i<n;i++)
 {
 printf("%f %f %f\n",weight[i],profit[i],x[i]);
 tp=tp+(profit[i]*x[i]);
 }
 printf("the maximum profit is %f\n",tp);
}
}
