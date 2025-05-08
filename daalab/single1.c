#include<stdio.h>
void main()
{
int i,j,n,adj[10][10];
printf("enter the value of n");
scanf("%d",&v);
printf("enter the adjacency matrix");
for(i=1;i<v;i++)
{
 for(j=1;j<v;j++)
  {
   scanf("%d",&adj[i][j]);
  }
}
printf("the adjacency matrix");
for(i=0;i<v;i++)
{
 for(j=0;j<v;j++)
  {
   printf("%d\n",adj[i][j]);
  }
}
dijkastra(adj,0);
}
int mindistance(int dist[],bool visited[])
{
 int min=
 for(int i=0;i<v;i++)
 if(visited[i]==false &&dist[i]<=min)
 min=dist[i]
