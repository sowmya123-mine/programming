#include<stdio.h>
#include<math.h>
void main()
{
 int n,i,j;
 printf("enter the number of vertices\n");
 scanf("%d",&n);
 double a[n][n];
 printf("enter the values in the adjacency matrix\n");
   for(int i=0;i<n;i++)
    {
     for(int j=0;j<n;j++)
     {
      scanf("%lf",&a[i][j]);
     }
    }
for(int i=0;i<n;i++)a[i][j]=0;
//all pairs shortest path 
for(int k=0;k<n;k++)
 {
  for(int i=0;i<n;i++)
   {
    for(int j=0;j<n;j++)
     {
      a[i][j]=(a[i][j]<(a[i][k]+a[k][j]))?a[i][j]:a[j][k]+a[k][j];
     }
   }
// the finalized shortest paths
printf("the all pairs shortest path of given graph is");
  for(int i=0;i<n;i++)
   {
    for(int j=0;j<n;j++)
     {
      printf("%.0lf\t",a[i][j]);
     }
    printf("\n");
   }
 }
}
