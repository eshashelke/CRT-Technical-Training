import java.util.*;

public class day4 {

    static class Stack {
        int top;
        final int CAPACITY;
        int stack[];

        Stack(int size) {
            top = -1;
            CAPACITY = size;
            stack = new int[CAPACITY];
        }

        boolean isFull() {
            if (top == CAPACITY - 1) {
                return true;
            } else {
                return false;
            }
        }

        boolean isEmpty() {
            if (top == -1) {
                return true;
            } else {
                return false;
            }
        }

        void push(int data) {
            if (isFull()) {
                System.out.println("Stack Overflow");
            } else {
                top++;
                stack[top] = data;
                System.out.println("Data pushed successfully");
            }
        }

        void pop() {
            if (isEmpty()) {
                System.out.println("Stack Underflow");
            } else {
                int deleted = stack[top];
                top--;
                System.out.println("Deleted element is: " + deleted);
            }
        }

        void traverse() {
            if (isEmpty()) {
                System.out.println("Stack is empty");
            } else {
                System.out.println("Stack elements are:");
                for (int i = top; i >= 0; i--) {
                    System.out.println(stack[i]);
                }
            }
        }

        void peek() {
            if (isEmpty()) {
                System.out.println("Stack Underflow");
            } else {
                System.out.println("Top element is: " + stack[top]);
            }
        }
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the size of the stack: ");
        int n = sc.nextInt();
        Stack st = new Stack(n);
        while (true) {
            System.out.println("\nEnter the choice that you want to select:");
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Traverse");
            System.out.println("4. Peek");
            System.out.println("0. Exit");
            int choice = sc.nextInt();
            switch (choice) {
                case 1:
                    System.out.print("Enter the data that you want to insert in stack: ");
                    int data = sc.nextInt();
                    st.push(data);
                    break;
                case 2:
                    st.pop();
                    break;
                case 3:
                    st.traverse();
                    break;
                case 4:
                    st.peek();
                    break;
                case 0:
                    System.out.println("Exiting...");
                    System.exit(0);
                default:
                    System.out.println("Enter a valid choice!!");
            }
        }
    }
}