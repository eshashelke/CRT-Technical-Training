/*
------------------------------------------------------------
Day 5 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic: Binary Search Tree (BST)

Description:
This program demonstrates the implementation of a
Binary Search Tree (BST) in Java. It supports node
insertion and tree traversal operations using recursion.

Operations Implemented:
1. Insert Node
2. Inorder Traversal
3. Preorder Traversal
4. Postorder Traversal

Concepts Covered:
- Binary Search Tree
- Recursive Insertion
- Tree Traversal Techniques
- Inorder Traversal
- Preorder Traversal
- Postorder Traversal
- Hierarchical Data Structures

------------------------------------------------------------
*/

  

import java.util.*;

class BinaryTree {

    class GetNode {
        int data;
        GetNode rightchild;
        GetNode leftchild;

        public GetNode(int key) {
            leftchild = null;
            data = key;
            rightchild = null;
        }
    }

    GetNode root;

    public BinaryTree() {
        root = null;
    }

    Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {

        BinaryTree tree = new BinaryTree();

        while (true) {

            System.out.println();
            System.out.println("1. Insert");
            System.out.println("2. Inorder Traversing");
            System.out.println("3. Preorder Traversing");
            System.out.println("4. Postorder Traversing");
            System.out.println("5. Search Node");
            System.out.println("6. Height of Tree");
            System.out.println("0. Exit");

            System.out.print("Enter your choice: ");
            int ch = tree.sc.nextInt();

            switch (ch) {

                case 1:
                        // System.out.println("Enter data");
                        // int key=tree.sc.nextInt();
                        // tree.root=tree.insert(tree.root,key);
                        //int arr[]={36,26,46,21,31,41,56};
                    int arr[] = {36, 26, 46, 21, 31, 11, 24, 41, 56, 51, 66};

                    for (int i = 0; i < arr.length; i++) {
                        tree.root = tree.insert(tree.root, arr[i]);
                    }

                    System.out.println("Nodes inserted successfully.");
                    break;

                case 2:

                    System.out.print("Inorder Traversal: ");
                    tree.inorder(tree.root);
                    System.out.println();
                    break;

                case 3:

                    System.out.print("Preorder Traversal: ");
                    tree.preorder(tree.root);
                    System.out.println();
                    break;

                case 4:

                    System.out.print("Postorder Traversal: ");
                    tree.postorder(tree.root);
                    System.out.println();
                    break;

                case 5:

                    System.out.print("Enter value to search: ");
                    int key = tree.sc.nextInt();

                    if (tree.search(tree.root, key)) {
                        System.out.println(key + " found in the tree.");
                    } else {
                        System.out.println(key + " not found in the tree.");
                    }

                    break;

                case 6:

                    System.out.println("Height of tree = " + tree.height(tree.root));
                    break;

                case 0:

                    System.out.println("Exiting...");
                    System.exit(0);

                default:

                    System.out.println("Enter valid choice!");
            }
        }
    }

    public GetNode insert(GetNode root, int key) {

        if (root == null) {
            root = new GetNode(key);
            return root;
        }

        if (key < root.data) {
            root.leftchild = insert(root.leftchild, key);
        } else {
            root.rightchild = insert(root.rightchild, key);
        }

        return root;
    }

    public boolean search(GetNode root, int key) {

        if (root == null) {
            return false;
        }

        if (root.data == key) {
            return true;
        }

        if (key < root.data) {
            return search(root.leftchild, key);
        } else {
            return search(root.rightchild, key);
        }
    }

    public int height(GetNode root) {

        if (root == null) {
            return 0;
        }

        int leftHeight = height(root.leftchild);
        int rightHeight = height(root.rightchild);

        return Math.max(leftHeight, rightHeight) + 1;
    }

    public void inorder(GetNode root) {

        if (root != null) {

            inorder(root.leftchild);
            System.out.print(root.data + "->");
            inorder(root.rightchild);
        }
    }

    public void preorder(GetNode root) {

        if (root != null) {

            System.out.print(root.data + "->");
            preorder(root.leftchild);
            preorder(root.rightchild);
        }
    }

    public void postorder(GetNode root) {

        if (root != null) {

            postorder(root.leftchild);
            postorder(root.rightchild);
            System.out.print(root.data + "->");
        }
    }
}