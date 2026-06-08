/*
------------------------------------------------------------
Day 3 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic: Singly Linked List

Description:
This program implements a Singly Linked List in Java
using dynamic memory allocation through nodes.

Operations Implemented:
1. Append Node
2. Traverse List
3. Insert at Beginning
4. Insert After a Given Node
5. Delete from Beginning
6. Delete from End
7. Find Size of Linked List

Concepts Covered:
- Linked List Data Structure
- Node Creation
- Dynamic Memory Allocation
- Traversal
- Insertion Operations
- Deletion Operations

------------------------------------------------------------
*/





import java.util.*;
class Day3{
    class GetNode{
        int data;
        GetNode next;
        //removed public void
        GetNode(){
            next=null;
        }
    }
    GetNode head=null;
    Scanner sc = new Scanner(System.in);
    
    public void addatbegin(){
        GetNode newNode = new GetNode();
        System.out.print("Enter the data to be added: ");
        int data = sc.nextInt();
        newNode.data=data;
        if(head==null){
            head=newNode;
        }
        else{
            newNode.next=head;
            head=newNode;
            System.out.println("Data is added.");
        }
    }
    
    public void append(){
        GetNode newNode=new GetNode();
        System.out.print("Enter the data to be added: ");
        int data = sc.nextInt();
        newNode.data=data;
        if(head==null){
            head=newNode;
        }
        else{
            GetNode ptr= head;
            while(ptr.next!=null){
                ptr=ptr.next;
            }
            ptr.next=newNode;
            System.out.println(data+" is added.");
        }
    }
    
    public void traverse(){
        
        if(head==null){
            System.out.println("List is empty.");
        }
        else{
            GetNode ptr= head;
            while(ptr != null){
    System.out.print(ptr.data);

    if(ptr.next != null){
        System.out.print(" -> ");
    }

    ptr = ptr.next;
}
        }
    }
    
    public void addAtAfter(){
        GetNode newNode=new GetNode();
        System.out.println("Enter the data to be added: ");
        int data = sc.nextInt();
        System.out.println("Enter key after which data is inserted: ");
        int key = sc.nextInt();
        newNode.data=data;
        if(head==null){
            head=newNode;
        }
        else{
            GetNode ptr= head;
            while(ptr.next!=null){
                if(ptr.data==key){
                    break;
                }
                ptr=ptr.next;
            }
            if(ptr.next==null){
                System.out.println("Key not found.");
            }
            //put inside else
            else{
                newNode.next=ptr.next;
                ptr.next=newNode;   
            }
     }}
     
     public void deleteAtBegin(){
         if(head==null){
             System.out.println("List is empty.");
         }
         else{
             head=head.next;
         }
     }
     
    public void deleteAtEnd() {

        if(head == null) {
           System.out.println("List is empty.");
        }
        else if(head.next == null) {
            head = null;
        }
        else {
            GetNode ptr = head;
            while(ptr.next.next != null) {
            ptr = ptr.next;
            }
            ptr.next = null;
        }
    }
    
    public void size() {
        int count = 0;
        GetNode ptr = head;
        while(ptr != null) {
            count++;
            ptr = ptr.next;    }
        System.out.println("Size = " + count);
    }
    
    public void search(){
        if(head==null){
            System.out.println("List is empty.");
            return ;
        }
        System.out.println("Enter the data to be searched: ");
        int key = sc.nextInt(); 
        GetNode ptr = head;
        int pos = 1;
        while(ptr != null) {
            if(ptr.data == key) {
                System.out.println("Data found at position: " + pos);
                return;
            }
            ptr = ptr.next;
            pos++;
        }
        System.out.println("Data not found.");

    }
    
    public static void main(String [] args){
        Day3 obj= new Day3();
        
        while(true){
            System.out.println();
            System.out.println("1. Append");
            System.out.println("2. Traverse");
            System.out.println("3. Add at begin");
            System.out.println("4. Add at after");
            System.out.println("5. Delete at begin");
            System.out.println("6. Delete at end");
            System.out.println("7. Size of list");
            System.out.println("8. Search data");
            System.out.println("0. Exit");
        
            int ch = obj.sc.nextInt();
            switch(ch){
               case 1: obj.append();     break;
               case 2: obj.traverse();    break;
               case 3: obj.addatbegin();   break;
               case 4: obj.addAtAfter();    break;
               case 5: obj.deleteAtBegin();   break;
               case 6: obj.deleteAtEnd();    break;
               case 7: obj.size();    break;
               case 8: obj.search();    break;
               case 0: System.exit(0);        }//switch close
        }//while close
    }
}