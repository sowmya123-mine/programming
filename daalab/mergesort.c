#include<stdio.h>
#include<stdlib.h>
void merge(int a[],int low,int mid,int high)
{
int b[10];
int i,j,k;
i=low;
j=mid+1;
k=low;
while(i<=mid && j<=high)
{
if(a[i]<=a[j])
{
b[k]=a[i];
k++;
i++;
}
else
{
b[k]=a[j];
k++;
j++;
}
}
//collecting remaining elements
while(i<=mid)
{
b[k]=a[i];
k++;
i++;
}
while(j<=high)
{
b[k]=a[j];
k++;
j++;
}
for(i=low;i<=high;i++)
a[i]=b[i];
}
void sort(int a[],int low,int high)
{
if(low<high)
{
int mid=(low+high)/2;
sort(a,low,mid);
sort(a,mid+1,high);
//merge two arrays
merge(a,low,mid,high);
}
}
void main()
{
int a[50],n,i;
printf("enter the number of elements\n");
scanf("%d",&n);
printf("list before sorting\n");
for(i=0;i<n;i++)
{
scanf("%d",&a[i]);
}
sort(a,0,n-1);
printf("list after sorting\n");
for(i=0;i<n;i++)
printf("%d\n",a[i]);
}
