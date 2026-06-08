// Queue Implementation Using Array

import java.util.Scanner;

class Queue {

    int queue[], size, front, rear;

    public Queue(int n) {

        size = n;
        queue = new int[size];

        front = 0;
        rear = -1;
    }

    public boolean isFull() {

        if (rear == size - 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean isEmpty() {

        if (rear == -1) {
            return true;
        } else {
            return false;
        }
    }

    public void insert(int data) {

        if (isFull()) {
            System.out.println("Queue is full.");
        }

        else {

            rear++;
            queue[rear] = data;

            System.out.println(data + " is inserted.");
        }
    }

    public int delete() {

        if (isEmpty()) {

            System.out.println("Queue is empty.");
            return -1;
        }

        else {

            int data = queue[front];

            for (int i = front; i < rear; i++) {
                queue[i] = queue[i + 1];
            }

            rear--;

            return data;
        }
    }

    public void display() {

        if (isEmpty()) {

            System.out.println("Queue is empty.");
        }

        else {

            System.out.println("Queue elements are:");

            for (int i = 0; i <= rear; i++) {
                System.out.print(queue[i] + "\t");
            }

            System.out.println();
        }
    }

    public int peek() {

        if (isEmpty()) {

            System.out.println("Queue is empty.");
            return -1;
        }

        else {

            return queue[front];
        }
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the size of Queue: ");
        int n = sc.nextInt();

        int data;

        Queue obj = new Queue(n);

        while (true) {

            System.out.println("\n1. Insert");
            System.out.println("2. Delete");
            System.out.println("3. Display");
            System.out.println("4. Peek");
            System.out.println("0. Exit");

            System.out.print("Enter choice: ");
            int ch = sc.nextInt();

            switch (ch) {

                case 1:

                    System.out.print("Enter data: ");
                    data = sc.nextInt();

                    obj.insert(data);
                    break;

                case 2:

                    data = obj.delete();

                    if (data != -1) {
                        System.out.println(data + " is Deleted");
                    }

                    break;

                case 3:

                    obj.display();
                    break;

                case 4:

                    data = obj.peek();

                    if (data != -1) {
                        System.out.println("Front element is: " + data);
                    }

                    break;

                case 0:

                    System.out.println("Exiting...");
                    System.exit(0);

                default:

                    System.out.println("Invalid choice.");
            }
        }
    }
}