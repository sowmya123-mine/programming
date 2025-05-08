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
void inorder(struct node *root)
{
if(root!=NULL)
{
inorder(root->left);
printf("%d\n",root->data);
inorder(root->right);
}
}
struct node *maximum(struct node *root)
{
if(root==NULL)
return NULL;
if(root->right!=NULL)
{
root->right=maximum(root->right);
}
return root;
}
struct node*delete(struct node*root,int value)
{
   if(root==NULL)
     return NULL;
   if(value>root->data)
     root->right=delete(root->right,value);
   else if(value<root->data)
    root->left=delete(root->left,value);
   else
   {
   if(root->left==NULL&&root->right==NULL)
     {
       free(root);
       return NULL;
     } 
  else if(root->left==NULL||root->right==NULL)
   {
     struct node*temp;
     if(root->left==NULL)
       temp=root->right;
     else
      temp=root->left;
      free(root);
       return temp;  
   }
  else
  {
   struct node*temp=maximum(root->right);
   root->data=temp->data;
   root->right=delete(root->right,temp->data);
  }
 }  
 return root;
}
void main()
{
struct node *root;
int num,n=5,value;
printf("enter the value of root node");
scanf("%d",&num);
root=create(num);
for(int i=1;i<n;i++)
{
scanf("%d",&num);
insert(root,num);
}
printf("enter the no to delete");
scanf("%d",&value);
delete(root,value);
printf("inorder traversal");
inorder(root);
}

