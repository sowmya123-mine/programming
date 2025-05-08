#include<stdio.h>
int max(int a,int b)
{
  if(a>b){
  return a;
  }
  else{
   return b;
   }
}
int knapsack(int s,int wt[],int val[],int n)
{
  int i,j,w;
  int sp=0,sw=0;
  int knap[n+1][s+1];
  for(i=0;i<=n;i++){
    for(w=0;w<=s;w++){
      if(i==0 || w==0){
       knap[i][w]=0;
      }
      else if(wt[i-1]<=w){
       knap[i][w]=max(val[i-1]+knap[i-1][w-wt[i-1]],knap[i-1][w]);
      }
      else{
       knap[i][w]=knap[i-1][w];
     }
    }
  }
 int res=knap[n][s];
printf("after filling the box the knapsack size is:\n");
printf("%d\n",res);
printf("selection vector:");
j=s;
for(i=n;i>0;i--)
{
  while(j>0)
  {
    if(knap[i][j]=knap[i-1][j])
    {
      i=i-1;
    }
    else
    {
      knap[i][j]=knap[i][j]-val[i];
      j=j-wt[i];
      sw=sw+wt[i];
      sp=sp+val[i];
    }
  }
 }
  printf("%d\n",sp);
  printf("%d\n",sw);
}
int main()
{
  int val[10];
  int wt[10];
  int n,s,i;
  printf("enter num of items:");
  scanf("%d",&n);
  printf("enter the bag size:");
  scanf("%d",&s);
  printf("enter the profits:");
  for(i=0;i<n;i++)
  {
    scanf("%d",&val[i]);
  }
  printf("enter the weights:");
  for(i=0;i<n;i++)
  {
     scanf("%d",&wt[i]);
   }
   knapsack(s,wt,val,n);
   return 0;
}

    
  

      
