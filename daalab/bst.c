#include<stdio.h>
#include<stdlib.h>
struct node
{
int data;
struct node *left,*right;
};
struct node*create(int num)
{
struct node *newnode;
newnode=malloc(sizeof(struct node));
newnode->data=num;
newnode->left=NULL;
newnode->right=NULL;
return newnode;
}
struct node *insert(struct node *root,int num)
{
if(root==NULL)
return create(num);
else if(num>root->data)
root->right=insert(root->right,num);
else
root->left=insert(root->left,num);
return root;
}
void postorder(struct node *root)
{
if(root!=NULL)
{
postorder(root->left);
postorder(root->right);
printf("%d\n",root->data);
}
}
void main()
{
struct node *root;
int num,n=5;
printf("enter the value of root node");
scanf("%d",&num);
root=create(num);
for(int i=1;i<n;i++)
{
scanf("%d",&num);
insert(root,num);
}
printf("postorder traversal");
postorder(root);
}

