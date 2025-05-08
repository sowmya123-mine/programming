#include<stdio.h>
void main()
{
int a[10],n;
int key,i,j;
printf("enter the value of n");
scanf("%d",&n);
for(int i=0;i<n;i++)
{
scanf("%d",&a[i]);
}
printf("the elements are");
for(int i=0;i<n;i++)
{
printf("%d\n",a[i]);
}
for(i=0;i<n;i++)
{
key=a[i];
j=i-1;
while(j>=0&&a[j]>key)
{
a[j+1]=a[j];
j=j-1;
}
a[j+1]=key;
}
printf("the elements are");
for(int i=0;i<n;i++)
{
printf("%d\n",a[i]);
}
}
