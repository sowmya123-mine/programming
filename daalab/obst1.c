#include<stdio.h>
#include<stdlib.h>
int find(int c[10][10],int r[10][10],int i,int j);
void main()
{
 int c[10][10],r[10][10],w[10][10],p[10],q[10],n;
 printf("enter the number of elements");
 scanf("%d",&n);
 printf("enter the values of failures");
 for(int i=0;i<=n;i++)
 {
  scanf("%d",&q[i]);
 }
 printf("enter teh value of success");
 for(int i=1;i<=n;i++)
 { 
  scanf("%d",&p[i]);
 }
 for(int i=0;i<n;i++)
      {
        w[i][i]=q[i];
        c[i][i]=0;
        r[i][i]=0;
   w[i][i+1]=q[i]+q[i+1]+p[i+1];
   r[i][i+1]=i+1;
   c[i][i+1]=q[i]+q[i+1]+p[i+1];
   printf("w[%d][%d] :%d\t c[%d][%d] :%d\t r[%d][%d] :%d\t",i,w[i][i],i,c[i][i],i,r[i][i]);
   }
 w[n][n]=q[n];
 r[n][n]=0;
 c[n][n]=0;
printf("w[%d][%d],c[%d][%d],r[%d][%d]",n,w[n][n],n,c[n][n],n,r[n][n]);
for(int m=2;m<=n;m++)
{ 
for(int i=0;i<=n-m;i++)
 {
   int k;
   int j=i+m;
 w[i][j]=w[i][j-1]+p[j]+q[j];
 k=find(c,r,i,j);
 c[i][j]=w[i][j]+c[i][k-1]+c[k][j];
 r[i][j]=k;
printf("w[%d][%d]=%d\t c[%d][%d]=%d\t r[%d][%d]=%d\t",i,j,w[i][j],i,j,c[i][j],i,j,r[i][j]);
  }
 }
}
int find(int c[10][10],int r[10][10],int i,int j)
{
 int min=9999;
 int l,m;
 for(m=r[i][j-1];m<=r[i+1][j];m++)
 {
  if(c[i][m-1]+c[m][j]<min) 
  {
   min=c[i][m-1]+c[m][j];
   l=m;
  }
   return l;
 }
}
