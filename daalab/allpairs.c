#include<stdio.h>
#include<math.h>
void main()
{
int n,j;
printf("enter the number of vertices");
scanf("%d",&n);
double a[n][n];
printf("enter the value of adjacent matrix");
for(int i=0;i<n;i++)
 {
  for(int j=0;j<n;j++)
   {
    scanf("%lf",&a[i][j]);
   }
}
for(int i=0;i<n;i++)
{
a[i][i]=0;
//all source shortest path calculation
for(int k=0;k<n;k++)
{
 for(int i=0;i<n;i++)
  {
   for(int j=0;j<n;j++)
    {
    a[i][j]=a[i][j]<(a[i][k]+a[k][j])?a[i][j]:a[i][k]+a[k][j];
    }
   }
 }
}
//the finalized shortest paths
printf("the all pairs shortest path given by");
for(int i=0;i<n;i++)
  {
    for(int j=0;j<n;j++)
     {
      printf("%.0lf\n",a[i][j]);
     }
    printf("\n");
  }
}
   
