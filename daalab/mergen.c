#include<stdio.h>
void main()
{
int a[10],n,i;
printf("enter the value of n");
scanf("%d",&n);
printf("enter the elements");
for(i=0;i<n;i++)
{
scanf("%d",&a[i]);
}
printf("before sorting elements");
for(i=0;i<n;i++)
{
printf("%d\n",a[i]);
}
mergesort(a,0,n-1);
printf("after sorting elements");
for(i=0;i<n;i++)
{
printf("%d\n",a[i]);
}
}
void merge(int a[],int low,int mid,int high)
{
int b[10];
int i=low;
int j=mid+1;
int k=low;
while(i<=mid&&j<=high)
{
if(a[i]<=a[j])
{
b[k]=a[i];
i++;
k++;
}
else
{
b[k]=a[j];
j++;
k++;
}
}
while(i<=mid)
{
b[k]=a[i];
k++;
i++;
}
}
else
{
while(j<=high)
{
b[k]=a[j];
j++;
k++;
}
}
for(i=low;i<=high;i++)
a[i]=b[k];
}
void mergesort(int a[],int low,int high)
{
if(low<high)
{
int mid=(low+high)/2;
mergesort(a,low,mid);
mergesort(a,mid+1,high);
merge(a,low,mid,high);
}
}





