#include<stdio.h>
void sort(int a[],int n)
{
int gap,i,j,temp;
for(gap=n/2;gap>=1;gap=gap/2)
{
for(i=gap;i<n;i++)
{
temp=a[i];
for(j=i;j>=gap&&a[j-gap]>temp;j=j-gap)
a[j]=a[j-gap];
a[j]=temp;
}
}
}
void main()
{
int a[20],i,n;
printf("enter the no of elemnets");
scanf("%d",&n);
printf("enter array elements");
for(i=0;i<n;i++)
scanf("%d",&a[i]);
sort(a,n);
printf("after shell sort");
for(i=0;i<n;i++)
printf("%d\n",a[i]);
}

