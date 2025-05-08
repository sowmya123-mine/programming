#include<stdio.h>
#define max 10
#define infinity 999
#define startnode 0
//void dijkstra(int cost[max][max],int n);
int main()
{
int cost[max][max],i,j,n,u;
printf("enter the no of vertices");
scanf("%d",&n);
printf("enter the cost matrix");
for(i=0;i<n;i++)
 {
  for(j=0;j<n;j++)
    {
     scanf("%d",&cost[i][j]);
    }
 //dijkstra(cost,n);
 return 0;
}
}

