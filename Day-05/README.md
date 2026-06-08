# Day 5 - Binary Search Tree (BST) and Tree Traversals

## Overview

On Day 5 of Campus Recruitment Training (CRT), I implemented a Binary Search Tree (BST) in Java and explored various tree traversal techniques.

A Binary Search Tree is a hierarchical data structure where:

- All nodes in the left subtree are smaller than the root node.
- All nodes in the right subtree are greater than the root node.
- Both left and right subtrees are themselves Binary Search Trees.

The program supports insertion, searching, traversal, and height calculation using recursive techniques.

---

## Topics Covered

### 1. Binary Search Tree (BST)

A Binary Search Tree follows the property:

```text
Left Subtree < Root < Right Subtree
```

Example:

```text
                36
             /      \
           26        46
         /   \      /   \
       21    31   41    56
      /  \              / \
    11   24           51  66
```

---

### 2. Node Creation

Each node contains:

- Data
- Left Child Reference
- Right Child Reference

```java
class GetNode {
    int data;
    GetNode leftchild;
    GetNode rightchild;
}
```

---

### 3. Recursive Insertion

Nodes are inserted recursively while maintaining BST properties.

Rules:

- Smaller value → Left Subtree
- Greater value → Right Subtree

---

### 4. Tree Traversal Techniques

#### Inorder Traversal

Traversal Order:

```text
Left → Root → Right
```

Output of a BST appears in sorted order.

Example:

```text
11 → 21 → 24 → 26 → 31 → 36 → 41 → 46 → 51 → 56 → 66
```

---

#### Preorder Traversal

Traversal Order:

```text
Root → Left → Right
```

Applications:

- Tree Copying
- Expression Trees
- Serialization

---

#### Postorder Traversal

Traversal Order:

```text
Left → Right → Root
```

Applications:

- Tree Deletion
- Expression Evaluation

---

### 5. Search Operation

Implemented recursive search functionality.

Features:

- Searches a given value in the BST
- Returns whether the node exists
- Takes advantage of BST properties for efficient searching

Example:

```text
Enter value to search: 41
41 found in the tree.
```

---

### 6. Height of Tree

Implemented recursive height calculation.

Definition:

```text
Height = Number of levels in the tree
```

Formula:

```text
Height(root) =
max(height(left), height(right)) + 1
```

This operation helps determine the depth and structure of the tree.

---

## Operations Implemented

| Operation | Description |
|------------|------------|
| Insert | Insert nodes into BST |
| Search | Search a node recursively |
| Inorder Traversal | Left → Root → Right |
| Preorder Traversal | Root → Left → Right |
| Postorder Traversal | Left → Right → Root |
| Height Calculation | Finds height of BST |

---

## Concepts Learned

- Binary Trees
- Binary Search Trees
- Recursive Programming
- Tree Traversal Algorithms
- BST Searching
- Height Calculation
- Hierarchical Data Structures
- Divide and Conquer Thinking

---

## Files

| File Name | Description |
|------------|------------|
| BinaryTree.java | Implementation of Binary Search Tree with insertion, search, height calculation, and traversal operations. |

---

## Menu Driven Operations

```text
1. Insert
2. Inorder Traversing
3. Preorder Traversing
4. Postorder Traversing
5. Search Node
6. Height of Tree
0. Exit
```

---

## Learning Outcome

By implementing a Binary Search Tree from scratch, I gained practical experience in:

- Creating tree-based data structures
- Recursive insertion and searching
- Understanding hierarchical node relationships
- Implementing traversal algorithms
- Calculating tree height recursively

These concepts are fundamental in Data Structures and Algorithms and are frequently asked in technical interviews, coding assessments, and competitive programming.

---

## CRT Progress

✅ Day 1 - Basic Programming and Recursion

✅ Day 2 - Searching and Sorting Algorithms

✅ Day 3 - Singly Linked List Operations

✅ Day 4 - Stack and Queue Data Structures

✅ Day 5 - Binary Search Tree, Search Operation, and Tree Traversals