#include<stdio.h>
#include<stdlib.h>
#define size 10
int arr[size];
int prime(int value,int n);
void rehash(int value,int n);
void insert(int value,int n)
{
  /*int j,i;
  int key=value%n;
  if(arr[key]==-1)
     {                         //insert an element
      arr[key]=value;
      printf("%d inserted at arr[%d]\n",value,key);
     }*/
  /* else if(arr[key]!=-1)
     {
     printf("collision:arr[%d] has element %d already!\n",value,arr[key]);
      key=(key+1)%n;
      while(arr[key]!=-1)
      {                         //linear probing
      key=(key+1)%n;
      }
      if(arr[key]==-1)
      arr[key]=value;
     }*/
  /*else if(arr[key]!=-1)
  {
  printf("collision:arr[%d] has element %d already!\n",value,arr[key]);
   for(i=0;i<n;i++)
   {
     key=(key+i*i)%n;
    if(arr[key]==-1)       //quadratic probing
    arr[key]=value;
  }
 }*/
 int h,j;
 int h1key=value%n;
  if(arr[h1key]==-1)
  {
   arr[h1key]=value;
   printf("%d inserted at arr[%d]\n",value,h1key);
  }
  else if(arr[h1key]!=-1)                               //double hahsing
  {
   printf("collision:arr[%d] has element %d already!\n",value,arr[h1key]);
   j=prime(value,n);
   int h2key;
   h2key=j-(value%j);
   h=h1key+h2key;
   if(arr[h]==-1)
   {
   arr[h]=value;
   }
   else 
   {
    h=0;
   while(arr[h]!=-1&&h<n)
   {
   h=(h+1)%n;
   }
   arr[h]=value;
   h++;
   }
  }
  else
  {
  if(h>n)
  exit(0);
  }
}
int prime(int value,int n)
{
int i,j,temp,c,k;
temp=n-1;
for(i=temp;i>=0;i--)
  {
   c=0;
   for(j=1;j<=i;j++)
    {
     if(i%j==0)
      {
        c=c+1;
      }
    }
if(c==2)
   {
    printf("it is prime no to continue the program %d \n",i);
    return i;
    break;
   }
  }  
} 
void del(int value,int n)
 {
 int i;
 for( i=0;i<n;i++)
 {
   if(arr[i]==value)
     arr[i]=-1;
  }
}
void search(int value,int n)
  {
  int i;
    for(i=0;i<n;i++)
    {
     if(arr[i]==value)
        printf("search is found\n");
    }
 }
void display()
  {
   int i;
    for(i=0;i<size;i++)
      printf(" %d arr[%d]\n",i,arr[i]);
  }
void main()
{
    int i,num,delno,s1,s2,n;
    for(i=0;i<size;i++)
      arr[i]=-1;
      printf("enter the no elements");
      scanf("%d",&n);
    for(i=0;i<size;i++)
     {
      scanf("%d",&num);
      insert(num,n);
     }
    printf("hash table\n");
    display();
    printf("\n");
    printf("enter the element to delete \n");
    scanf("%d",&delno);
    del(delno,n);
    printf("after the deletion hash table\n");
    display();
    printf("\n");
    printf("enter the u want to serach\n");
    scanf("%d",&s1);
    search(s1,n);
    printf("enter the u want to serach\n");
    scanf("%d",&s2);
    search(s2,n);
}

