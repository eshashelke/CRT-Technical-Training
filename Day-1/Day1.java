/*
------------------------------------------------------------
Day 1 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topics Covered:
1. Reverse a Number
2. Array Insertion
3. Finding Maximum and Minimum Element in an Array
4. Recursion
   - Factorial
   - Multiplication
   - Power
   - Sum of Natural Numbers

Description:
This program demonstrates fundamental programming concepts
including number manipulation, array operations, and
recursive function implementation in Java.

------------------------------------------------------------
*/


import java.util.*;

class Recursion {

    // Factorial using recursion
    public int fact(int n) {
        if (n == 0 || n == 1) {
            return 1;
        }
        return n * fact(n - 1);
    }

    // Multiplication using recursion
    public int multiply(int x, int y) {
        if (x == 0 || y == 0)
            return 0;

        if (y == 1)
            return x;

        return x + multiply(x, y - 1);
    }

    // Power using recursion
    public int power(int x, int y) {
        if (y == 0)
            return 1;

        return x * power(x, y - 1);
    }

    // Sum of first n natural numbers
    public int sum(int n) {
        if (n == 0)
            return 0;

        return n + sum(n - 1);
    }
}

public class Day1 {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        
        // Reverse a Number
        

        int num1 = 234;

        int reversed =
                (num1 % 10) * 100 +
                ((num1 / 10) % 10) * 10 +
                (((num1 / 10) / 10) % 10);

        System.out.println("Number: " + num1 +
                ", Reversed: " + reversed);

       
        // Insert Element in Array
        
        int arr[] = new int[200];

        System.out.print("\nEnter size of array: ");
        int size = scanner.nextInt();

        System.out.print("Enter array elements: ");

        for (int i = 0; i < size; i++) {
            arr[i] = scanner.nextInt();
        }

        System.out.print("Enter key element: ");
        int key = scanner.nextInt();

        System.out.print("Enter location: ");
        int loc = scanner.nextInt();



        // Shift elements to the right
        
        for (int j = size - 1; j >= loc; j--) {
            arr[j + 1] = arr[j];
        }


        // Insert new element

        arr[loc] = key;

        System.out.print("New Array: ");

        for (int i = 0; i <= size; i++) {
            System.out.print(arr[i] + " ");
        }

        
        // Find Maximum and Minimum
        

        int max = arr[0];
        int min = arr[0];

        for (int i = 0; i <= size; i++) {

            if (arr[i] > max) {
                max = arr[i];
            }

            if (arr[i] < min) {
                min = arr[i];
            }
        }

        System.out.println("\nMaximum element in array is: " + max);
        System.out.println("Minimum element in array is: " + min);

        
        // Recursion Examples
        

        Recursion rec = new Recursion();

        // Factorial
        int factorial = rec.fact(6);
        System.out.println("\nFactorial of 6 is: " + factorial);

        // Multiplication
        int product = rec.multiply(4, 5);
        System.out.println("Product of 4 and 5 is: " + product);

        // Power
        int power = rec.power(4, 3);
        System.out.println("4 raised to power 3 is: " + power);

        // Sum
        int summation = rec.sum(5);
        System.out.println("Sum of first 5 natural numbers is: " + summation);

        scanner.close();
    }
}