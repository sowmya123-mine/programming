#include<stdio.h>
void quicksort(int arr[10],int first,int last)
{
int i,j,pivot,temp;
if(first<last)
{
pivot=first;
i=first;
j=last;
while(i<j)
{
while(arr[i]<=arr[pivot])
i++;
while(arr[j]>arr[pivot])
j--;
if(i<j)
{
temp=arr[i];
arr[i]=arr[j];
arr[j]=temp;
}
else
{
temp=arr[pivot];
arr[pivot]=arr[j];
arr[j]=temp;
quicksort(arr,first,j-1);
quicksort(arr,j+1,last);
}  
}
}
}
void main()
{
int i,n,arr[12];
printf("enter the elements u want to insert\n");
scanf("%d",&n);
printf("enter the elements\n");
for(i=0;i<n;i++)
scanf("%d",&arr[i]);
quicksort(arr,0,n-1);
printf("the sorted elements is\n");
for(i=0;i<n;i++)
printf("%d\n",arr[i]);
}
