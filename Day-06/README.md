# Day 6 - Graph Data Structure using Adjacency Matrix

## Overview

On Day 6 of Campus Recruitment Training (CRT), I learned and implemented the Graph data structure in Java using an Adjacency Matrix.

A graph is a non-linear data structure consisting of vertices (nodes) and edges that connect them. Graphs are widely used in networking, social media applications, maps, routing algorithms, and many real-world systems.

This program provides a menu-driven implementation supporting multiple types of graph edges.

---

## Topics Covered

### 1. Graph Data Structure

A graph consists of:

- Vertices (Nodes)
- Edges (Connections)

Example:

```text
A ----- B
|       |
|       |
C ----- D
```

---

### 2. Adjacency Matrix Representation

The graph is stored using a two-dimensional matrix.

Example:

```text
    A B C
A   0 1 1
B   1 0 0
C   1 0 0
```

Where:

- 1 represents an edge
- 0 represents no edge
- Weight value represents weighted edge

---

### 3. Add Node

Allows dynamic insertion of new vertices into the graph.

Example:

```text
Enter vertex: A
Node A added successfully.
```

---

### 4. Add Edge Operations

Implemented multiple types of edges:

#### Undirected Unweighted Edge

```text
A ---- B
```

#### Undirected Weighted Edge

```text
A --5-- B
```

#### Directed Unweighted Edge

```text
A ----> B
```

#### Directed Weighted Edge

```text
A --7--> B
```

---

### 5. Display Graph

Displays the graph in the form of an adjacency matrix.

Example:

```text
    A B C
A : 0 1 1
B : 1 0 0
C : 1 0 0
```

---

### 6. Delete Node

Removes a node and all its associated edges from the graph.

---

## Operations Implemented

| Operation | Description |
|------------|------------|
| Add Node | Insert a new vertex |
| Add Undirected Edge | Connect two nodes |
| Add Undirected Weighted Edge | Connect nodes with weight |
| Add Directed Edge | One-way connection |
| Add Directed Weighted Edge | One-way weighted connection |
| Display Graph | Print adjacency matrix |
| Delete Node | Remove vertex and edges |

---

## Concepts Learned

- Graph Fundamentals
- Adjacency Matrix Representation
- Directed Graphs
- Undirected Graphs
- Weighted Graphs
- Dynamic Node Management
- Matrix Manipulation
- Menu-Driven Programming

---

## Files

| File Name | Description |
|------------|------------|
| Main.java | Graph implementation using Adjacency Matrix with various graph operations. |

---

## Menu Driven Operations

```text
1. Add Node
2. Add Edge (Undirected Unweighted)
3. Add Edge (Undirected Weighted)
4. Add Edge (Directed Weighted)
5. Add Edge (Directed Unweighted)
6. Display Graph
7. Delete Node
0. Exit
```

---

## Learning Outcome

By implementing a Graph using an Adjacency Matrix, I gained practical understanding of:

- Graph representation techniques
- Managing vertices and edges
- Weighted and unweighted graphs
- Directed and undirected graphs
- Matrix-based data structures
- Dynamic graph manipulation

Graphs are one of the most important topics in Data Structures and Algorithms and are frequently used in technical interviews, competitive programming, and real-world applications.

---

## CRT Progress

✅ Day 1 - Basic Programming and Recursion

✅ Day 2 - Searching and Sorting Algorithms

✅ Day 3 - Singly Linked List Operations

✅ Day 4 - Stack and Queue Data Structures

✅ Day 5 - Binary Search Tree and Tree Traversals

✅ Day 6 - Graph Data Structure using Adjacency Matrix