/*
------------------------------------------------------------
Day 10 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic: HackerRank Problem Solving Practice

Problems Covered:
1. Amount of Food
2. Insertion Sort - Part 1
3. Insert a Node at the Tail of a Linked List
4. Recursive Digit Sum
5. Tree Height
6. Tree Inorder Traversal
7. Tree Preorder Traversal
8. Tree Postorder Traversal
9. Capgemini Practice Question
10. Next Larger Element
11. Missing Numbers
12. Leaders in Array

------------------------------------------------------------
*/

import java.util.*;

public class Day10_HackerRank_Practice {

    // 1. Amount of Food
    static void amountOfFood() {
        int food = 100;
        int people = 5;

        int each = food / people;

        System.out.println("Food for each person = " + each);
    }

    // 2. Insertion Sort - Part 1
    static void insertionSort() {

        int arr[] = {2, 4, 6, 8, 3};

        int value = arr[arr.length - 1];
        int i = arr.length - 2;

        while (i >= 0 && arr[i] > value) {
            arr[i + 1] = arr[i];
            i--;
        }

        arr[i + 1] = value;

        System.out.println(Arrays.toString(arr));
    }

    // 3. Insert Node at Tail
    static class Node {
        int data;
        Node next;
    }

    static Node insertAtTail(Node head, int value) {

        Node newNode = new Node();
        newNode.data = value;

        if (head == null) {
            return newNode;
        }

        Node temp = head;

        while (temp.next != null) {
            temp = temp.next;
        }

        temp.next = newNode;

        return head;
    }

    // 4. Recursive Digit Sum
    static int digitSum(int n) {

        if (n == 0)
            return 0;

        return n % 10 + digitSum(n / 10);
    }

    // 5,6,7,8 Tree Operations

    static class TreeNode {
        int data;
        TreeNode left, right;

        TreeNode(int d) {
            data = d;
        }
    }

    static int height(TreeNode root) {

        if (root == null)
            return 0;

        return Math.max(height(root.left), height(root.right)) + 1;
    }

    static void inorder(TreeNode root) {

        if (root != null) {
            inorder(root.left);
            System.out.print(root.data + " ");
            inorder(root.right);
        }
    }

    static void preorder(TreeNode root) {

        if (root != null) {
            System.out.print(root.data + " ");
            preorder(root.left);
            preorder(root.right);
        }
    }

    static void postorder(TreeNode root) {

        if (root != null) {
            postorder(root.left);
            postorder(root.right);
            System.out.print(root.data + " ");
        }
    }

    // 9. Capgemini Practice Question
    static void capgeminiQuestion() {

        int arr[] = {5, 10, 15, 20};

        int sum = 0;

        for (int i = 0; i < arr.length; i++) {
            sum += arr[i];
        }

        System.out.println("Sum = " + sum);
    }

    // 10. Next Larger Element
    static void nextLargerElement() {

        int arr[] = {4, 5, 2, 10};

        for (int i = 0; i < arr.length; i++) {

            int next = -1;

            for (int j = i + 1; j < arr.length; j++) {

                if (arr[j] > arr[i]) {
                    next = arr[j];
                    break;
                }
            }

            System.out.println(arr[i] + " -> " + next);
        }
    }

    // 11. Missing Numbers
    static void missingNumber() {

        int arr[] = {1, 2, 4, 5};

        int n = 5;

        int total = n * (n + 1) / 2;

        int sum = 0;

        for (int i = 0; i < arr.length; i++) {
            sum += arr[i];
        }

        System.out.println("Missing Number = " + (total - sum));
    }

    // 12. Leaders in Array
    static void leaders() {

        int arr[] = {16, 17, 4, 3, 5, 2};

        for (int i = 0; i < arr.length; i++) {

            boolean leader = true;

            for (int j = i + 1; j < arr.length; j++) {

                if (arr[j] > arr[i]) {
                    leader = false;
                    break;
                }
            }

            if (leader) {
                System.out.print(arr[i] + " ");
            }
        }
    }

    public static void main(String[] args) {

        amountOfFood();

        insertionSort();

        System.out.println("Digit Sum = " + digitSum(9876));

        capgeminiQuestion();

        nextLargerElement();

        missingNumber();

        System.out.print("Leaders in Array: ");
        leaders();
    }
}
