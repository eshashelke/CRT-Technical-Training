/*
------------------------------------------------------------
Day 2 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topics Covered:
1. Binary Search
2. Bubble Sort
3. Selection Sort
4. Merge Two Sorted Arrays
5. Merge Sort

Description:
This program demonstrates fundamental searching and sorting
algorithms in Java. It includes implementation of Binary
Search, Bubble Sort, Selection Sort, Merging of Sorted
Arrays, and Merge Sort using recursion.

These algorithms form the foundation of efficient data
processing and are frequently asked in technical interviews
and placement examinations.

------------------------------------------------------------
*/





import java.util.*;

public class Day2 {

    public static void main(String[] args) {

        binarysearch();
        bubbleSort();
        selectionsort();
        mergeSortedArrays();   
        mergesort();           
    }

    static void binarysearch() {

        System.out.println("Binary Search:");
        Scanner scanner = new Scanner(System.in);

        int arr[] = {22, 33, 44, 55, 66, 77};

        int low = 0;
        int high = arr.length - 1;

        System.out.print("Enter key: ");
        int key = scanner.nextInt();

        boolean found = false;

        while (low <= high) {

            int mid = low + (high - low) / 2;

            if (arr[mid] == key) {
                System.out.println("Element found at index: " + mid);
                found = true;
                break;
            }

            else if (arr[mid] > key) {
                high = mid - 1;
            }

            else {
                low = mid + 1;
            }
        }

        if (!found) {
            System.out.println("Element not found");
        }

        scanner.close();
    }

    static void bubbleSort() {

        System.out.println();
        System.out.println("-------------------------------------------");
        System.out.print("Bubble Sort sorted array: ");

        int arr[] = {22, 44, 12, 62, 71, 16, 18};

        for (int i = 0; i < arr.length - 1; i++) {

            for (int j = 0; j < arr.length - 1 - i; j++) {

                if (arr[j] < arr[j + 1]) {

                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }

        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }

        System.out.println();
    }

    static void selectionsort() {

        System.out.println("-------------------------------------------");
        System.out.print("Selection Sort sorted array: ");

        int arr[] = {22, 44, 12, 62, 71, 16, 18};

        for (int i = 0; i < arr.length - 1; i++) {
            int minIndex = i;
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[minIndex] > arr[j]) {
                    minIndex = j;
                }
            }
            int temp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = temp;
        }
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
    }

    
    static void mergeSortedArrays() {
        System.out.println("-------------------------------------------");
        System.out.print("Merged Sorted Arrays: ");
        int arr1[] = {1, 3, 5};
        int arr2[] = {2, 4, 6};
        int len1 = arr1.length;
        int len2 = arr2.length;
        int arr3[] = new int[len1 + len2];
        int i = 0;
        int j = 0;
        int k = 0;
        while (i < len1 && j < len2) {
            if (arr1[i] < arr2[j]) {
                arr3[k] = arr1[i];
                i++;
            }
            else {
                arr3[k] = arr2[j];
                j++;
            }
            k++;
        }
        while (i < len1) {
            arr3[k] = arr1[i];
            i++;
            k++;
        }

        while (j < len2) {
            arr3[k] = arr2[j];
            j++;
            k++;
        }
        for (i = 0; i < arr3.length; i++) {
            System.out.print(arr3[i] + " ");
        }
        System.out.println();
    }

    
    static void mergesort() {

        System.out.println("-------------------------------------------");
        System.out.print("Merge Sort sorted array: ");

        int arr[] = {22, 44, 12, 62, 71, 16, 18};

        mergeSort(arr, 0, arr.length - 1);

        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
        }

        System.out.println();
    }

    static void mergeSort(int arr[], int left, int right) {

        if (left < right) {

            int mid = (left + right) / 2;

            mergeSort(arr, left, mid);
            mergeSort(arr, mid + 1, right);

            merge(arr, left, mid, right);
        }
    }

    static void merge(int arr[], int left, int mid, int right) {

        int len1 = mid - left + 1;
        int len2 = right - mid;

        int leftArr[] = new int[len1];
        int rightArr[] = new int[len2];

        for (int i = 0; i < len1; i++) {
            leftArr[i] = arr[left + i];
        }

        for (int i = 0; i < len2; i++) {
            rightArr[i] = arr[mid + 1 + i];
        }

        int i = 0;
        int j = 0;
        int k = left;

        while (i < len1 && j < len2) {

            if (leftArr[i] <= rightArr[j]) {
                arr[k] = leftArr[i];
                i++;
            }

            else {
                arr[k] = rightArr[j];
                j++;
            }

            k++;
        }

        while (i < len1) {
            arr[k] = leftArr[i];
            i++;
            k++;
        }

        while (j < len2) {
            arr[k] = rightArr[j];
            j++;
            k++;
        }
    }
}