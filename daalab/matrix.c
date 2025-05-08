//addition of two matrices
#include<stdio.h>
#include<stdlib.h>
void main()
{
int mat1[5][5],mat2[5][5],sum[5][5];
int i,j,row1,col1,row2,col2;
printf("enter the rows of first matrix");
scanf("%d",&row1);
printf("enter the cols of first matrix");
scanf("%d",&col1);
printf("enter the rows of second matrix");
scanf("%d",&row2);
printf("enter the cols of second matrix");
scanf("%d",&col2);
printf("enter the elements of first matrix");
for(i=0;i<row1;i++)
 {
  for(j=0;j<col1;j++)
   {
    scanf("%d",&mat1[i][j]);
   }
 }
printf("enter the elements of second matrix");
for(i=0;i<row2;i++)
 {
  for(j=0;j<col2;j++)
   {
    scanf("%d",&mat2[i][j]);
   }
 }
if(row1!=row2||col1!=col2)
{
printf("we cant add");
exit(0);
}
else
{ 
for(i=0;i<row1;i++)
 {
  for(j=0;j<col1;j++)
   {
    sum[i][j]=mat1[i][j]+mat2[i][j];
    }
 }
printf("addition of two matrices\n");
{
 for(i=0;i<row1;i++)
 {
  for(j=0;j<col1;j++)
   {
    printf("%d    ",sum[i][j]);
   }
   printf("\n");
 }
}
}
}
    

