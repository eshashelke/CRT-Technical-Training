import java.util.*;

public class Stack {

    Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {

        Stack stack = new Stack();

        while (true) {

            System.out.println();
            System.out.println("1. Using Array");
            System.out.println("2. Using Linked List");
            System.out.println("3. Using Built in Stack Class");
            System.out.println("0. Exit");

            System.out.print("Choose stack implementation: ");
            int ch = stack.sc.nextInt();

            switch (ch) {

                case 1:
                    System.out.println();
                    System.out.println("----------- Using Array -----------");
                    StackArray stackArray = new StackArray();
                    stackArray.run();
                    break;

                case 2:
                    System.out.println();
                    System.out.println("-------- Using Linked List --------");
                    StackLinkedList stackLinkedList = new StackLinkedList();
                    stackLinkedList.run();
                    break;

                case 3:
                    System.out.println();
                    System.out.println("------ Using Built In Stack -------");
                    StackBuiltIn stackBuiltIn = new StackBuiltIn();
                    stackBuiltIn.run();
                    break;

                case 0:
                    System.out.println("Exiting...");
                    System.exit(0);

                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}

class StackArray {

    int arr[];
    int top;
    int size;

    Scanner sc = new Scanner(System.in);

    StackArray() {

        System.out.print("Enter size of stack: ");
        size = sc.nextInt();

        arr = new int[size];
        top = -1;
    }

    void run() {

        StackArray s = this;

        while (true) {

            System.out.println();
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Peek");
            System.out.println("4. Display Stack");
            System.out.println("0. Back to Main Menu");

            System.out.print("Enter choice: ");
            int ch = s.sc.nextInt();

            switch (ch) {

                case 1:
                    System.out.println("Push Operation");
                    s.push();
                    break;

                case 2:
                    System.out.println("Pop Operation");
                    s.pop();
                    break;

                case 3:
                    System.out.println("Peek Operation");
                    s.peek();
                    break;

                case 4:
                    System.out.println("Display Operation");
                    s.display();
                    break;

                case 0:
                    return;

                default:
                    System.out.println("Invalid choice!");
            }
        }
    }

    public void push() {

        if (top == size - 1) {
            System.out.println("Stack Overflow!");
            return;
        }

        System.out.print("Enter element to push: ");
        int element = sc.nextInt();

        top++;
        arr[top] = element;

        System.out.println("Element pushed: " + element);
    }

    public void pop() {

        if (top == -1) {
            System.out.println("Stack Underflow!");
        } else {

            int poppedElement = arr[top];
            top--;

            System.out.println("Popped element: " + poppedElement);
        }
    }

    public void peek() {

        if (top == -1) {
            System.out.println("Stack is empty!");
        } else {
            System.out.println("Top element is: " + arr[top]);
        }
    }

    public void display() {

        if (top == -1) {

            System.out.println("Stack is empty!");

        } else {

            System.out.println("Stack elements from top to bottom:");

            for (int i = top; i >= 0; i--) {
                System.out.print(arr[i] + " ");
            }

            System.out.println();
        }
    }
}

class StackLinkedList {

    class Node {

        int data;
        Node next;

        Node() {
            next = null;
        }
    }

    Scanner sc = new Scanner(System.in);

    Node top;

    void run() {

        StackLinkedList s = this;

        while (true) {

            System.out.println();
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Peek");
            System.out.println("4. Display Stack");
            System.out.println("0. Back to Main Menu");

            System.out.print("Enter choice: ");
            int ch = s.sc.nextInt();

            switch (ch) {

                case 1:
                    System.out.println("Push Operation");
                    s.push();
                    break;

                case 2:
                    System.out.println("Pop Operation");
                    s.pop();
                    break;

                case 3:
                    System.out.println("Peek Operation");
                    s.peek();
                    break;

                case 4:
                    System.out.println("Display Operation");
                    s.display();
                    break;

                case 0:
                    return;

                default:
                    System.out.println("Invalid choice!");
            }
        }
    }

    public void push() {

        System.out.print("Enter element to push: ");
        int element = sc.nextInt();

        Node newNode = new Node();
        newNode.data = element;

        newNode.next = top;
        top = newNode;

        System.out.println("Element pushed: " + element);
    }

    public void pop() {

        if (top == null) {

            System.out.println("Stack Underflow!");

        } else {

            int poppedElement = top.data;
            top = top.next;

            System.out.println("Popped element: " + poppedElement);
        }
    }

    public void peek() {

        if (top == null) {
            System.out.println("Stack is empty!");
        } else {
            System.out.println("Top element is: " + top.data);
        }
    }

    public void display() {

        if (top == null) {

            System.out.println("Stack is empty!");

        } else {

            System.out.println("Stack elements from top to bottom:");

            Node temp = top;

            while (temp != null) {

                System.out.print(temp.data + " ");
                temp = temp.next;
            }

            System.out.println();
        }
    }
}

class StackBuiltIn {

    Scanner sc = new Scanner(System.in);

    void run() {

        java.util.Stack<Integer> stack = new java.util.Stack<>();

        while (true) {

            System.out.println();
            System.out.println("1. Push");
            System.out.println("2. Pop");
            System.out.println("3. Peek");
            System.out.println("4. Display Stack");
            System.out.println("0. Back to Main Menu");

            System.out.print("Enter choice: ");
            int ch = sc.nextInt();

            switch (ch) {

                case 1:

                    System.out.print("Enter element to push: ");
                    int element = sc.nextInt();

                    stack.push(element);

                    System.out.println("Element pushed: " + element);
                    break;

                case 2:

                    if (stack.empty()) {
                        System.out.println("Stack Underflow!");
                    } else {
                        System.out.println("Popped element: " + stack.pop());
                    }

                    break;

                case 3:

                    if (stack.empty()) {
                        System.out.println("Stack is empty!");
                    } else {
                        System.out.println("Top element is: " + stack.peek());
                    }

                    break;

                case 4:

                    if (stack.empty()) {
                        System.out.println("Stack is empty!");
                    } else {
                        System.out.println("Stack elements: " + stack);
                    }

                    break;

                case 0:
                    return;

                default:
                    System.out.println("Invalid choice!");
            }
        }
    }
}