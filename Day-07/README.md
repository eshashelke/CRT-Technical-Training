# Day 7 - Java HashMap Collection Framework

## Overview

On Day 7 of Campus Recruitment Training (CRT), I explored the Java HashMap class and its various operations.

A HashMap is a part of the Java Collection Framework that stores data in **key-value pairs**. It allows fast insertion, deletion, and searching operations.

Unlike arrays, HashMap stores data based on keys rather than indexes.

---

## Topics Covered

### 1. Creating a HashMap

Created HashMaps to store integer keys and string values.

Example:

```java
HashMap<Integer, String> hm = new HashMap<>();
```

---

### 2. Inserting Elements

Used the `put()` method to add key-value pairs.

Example:

```java
hm.put(100, "Disha");
hm.put(101, "Pallavi");
```

---

### 3. Displaying HashMap

Displayed complete HashMap contents.

```java
System.out.println(hm);
```

---

### 4. Traversing HashMap

Traversed the HashMap using:

- entrySet()
- for-each loop
- Iterator

Example:

```java
for(Map.Entry<Integer, String> m : hm.entrySet())
```

---

### 5. Accessing Keys and Values

Used:

- keySet()
- values()
- entrySet()

to retrieve different parts of the HashMap.

---

### 6. Updating Values

Modified existing values using:

```java
setValue()
```

Example:

```java
m1.setValue("Bala");
```

---

### 7. Removing Elements

Used:

```java
remove(key)
```

to delete entries from the HashMap.

---

### 8. Searching Operations

Checked whether a key exists using:

```java
containsKey()
```

---

### 9. Merging Two HashMaps

Used:

```java
putAll()
```

to combine two HashMaps.

---

### 10. Frequency Counting

Created a frequency map to count occurrences of names.

Example:

```java
freq.put(name, freq.getOrDefault(name, 0) + 1);
```

---

### 11. Checking Empty HashMap

Used:

```java
isEmpty()
```

to verify whether a HashMap contains elements.

---

### 12. Finding Maximum Value

Traversed a HashMap to find the maximum value and its corresponding key.

---

## Concepts Learned

- Java Collection Framework
- HashMap
- Key-Value Pair Storage
- Map Interface
- EntrySet
- KeySet
- Values Collection
- Iterator
- Frequency Counting
- Searching and Updating Data

---

## Files

| File Name | Description |
|------------|------------|
| HashMap2.java | Basic HashMap operations, traversal, iterator, and updating values. |
| HashMap3.java | Advanced HashMap operations including removal, searching, merging, frequency counting, and finding maximum values. |

---

## Operations Implemented

| Operation | Status |
|-----------|---------|
| Insert Data | ✅ |
| Display Data | ✅ |
| Traverse HashMap | ✅ |
| Access Keys | ✅ |
| Access Values | ✅ |
| Update Values | ✅ |
| Remove Entry | ✅ |
| Search Key | ✅ |
| Merge HashMaps | ✅ |
| Frequency Count | ✅ |
| Check Empty | ✅ |
| Find Maximum Value | ✅ |

---

## Learning Outcome

By implementing various HashMap programs, I gained practical understanding of:

- Java Collection Framework
- Efficient data storage using key-value pairs
- Iterating through maps
- Updating and deleting entries
- Counting frequencies
- Merging collections
- Solving interview-based HashMap problems

HashMap is one of the most frequently used data structures in Java programming and is commonly asked in technical interviews.

---

## CRT Progress

✅ Day 1 - Basic Programming and Recursion

✅ Day 2 - Searching and Sorting Algorithms

✅ Day 3 - Singly Linked List Operations

✅ Day 4 - Stack and Queue Data Structures

✅ Day 5 - Binary Search Tree and Tree Traversals

✅ Day 6 - Graph Data Structure using Adjacency Matrix

✅ Day 7 - Java HashMap Collection Framework