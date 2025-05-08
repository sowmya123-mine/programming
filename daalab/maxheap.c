#include<stdio.h>
void maxheapify(int a[],int ,int );
void maxheap(int a[],int beg,int end)
{
for(int i=end/2;i>=beg;i--)
maxheapify(a,i,end);
}
void maxheapify(int a[],int i,int end)
{
int largest=i;
int left=2*i;
int right=2*i+1;
while(left<=end && a[left]<a[largest])
largest=left;
while(right<=end && a[right]<a[largest])
largest=right;
if(largest!=i)
{
int temp;
temp=a[i];
a[i]=a[largest];
a[largest]=temp;
maxheapify(a,largest,end);
}
}
void heapsort(int a[],int end)
{
for(int i=end;i>=1;i--)
{
int temp;
temp=a[1];
a[1]=a[i];
a[i]=temp;
maxheapify(a,1,i-1);
}
}
void main()
{
int a[10],i;
printf("enter the elements");
for(i=1;i<10;i++)
scanf("%d",&a[i]);
printf("before sorting the elements is");
for(i=1;i<10;i++)
printf("%d\n",a[i]);
maxheap(a,1,9);
heapsort(a,9);
printf("after sorting the elements is");
for(i=1;i<10;i++)
printf("%d\n",a[i]);
}

