import java.util.*;

class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        Graph graph = new Graph();

        while (true) {

            System.out.println();
            System.out.println("1. Add Node");
            System.out.println("2. Add Edge (Undirected Unweighted)");
            System.out.println("3. Add Edge (Undirected Weighted)");
            System.out.println("4. Add Edge (Directed Weighted)");
            System.out.println("5. Add Edge (Directed Unweighted)");
            System.out.println("6. Display Graph");
            System.out.println("7. Delete Node");
            System.out.println("0. Exit");

            System.out.print("Enter your choice: ");
            int ch = sc.nextInt();

            String v, v1, v2;
            int weight;

            switch (ch) {

                case 1:

                    System.out.print("Enter vertex: ");
                    v = sc.next();

                    graph.addNode(v);
                    break;

                case 2:

                    System.out.print("Enter vertex 1: ");
                    v1 = sc.next();

                    System.out.print("Enter vertex 2: ");
                    v2 = sc.next();

                    graph.addEdge(v1, v2);
                    break;

                case 3:

                    System.out.print("Enter vertex 1: ");
                    v1 = sc.next();

                    System.out.print("Enter vertex 2: ");
                    v2 = sc.next();

                    System.out.print("Enter weight: ");
                    weight = sc.nextInt();

                    graph.addEdgeUW(v1, v2, weight);
                    break;

                case 4:

                    System.out.print("Enter vertex 1: ");
                    v1 = sc.next();

                    System.out.print("Enter vertex 2: ");
                    v2 = sc.next();

                    System.out.print("Enter weight: ");
                    weight = sc.nextInt();

                    graph.addEdgeDW(v1, v2, weight);
                    break;

                case 5:

                    System.out.print("Enter vertex 1: ");
                    v1 = sc.next();

                    System.out.print("Enter vertex 2: ");
                    v2 = sc.next();

                    graph.addEdgeDU(v1, v2);
                    break;

                case 6:

                    graph.display();
                    break;

                case 7:

                    System.out.print("Enter node to delete: ");
                    v = sc.next();

                    graph.delete(v);
                    break;

                case 0:

                    System.out.println("Exiting...");
                    System.exit(0);

                default:

                    System.out.println("Enter valid input!");
            }
        }
    }
}

class Graph {

    int nodeCount;
    ArrayList<String> nodes;
    ArrayList<ArrayList<Integer>> graph;

    Scanner sc = new Scanner(System.in);

    public Graph() {

        nodeCount = 0;
        nodes = new ArrayList<>();
        graph = new ArrayList<>();
    }

    public void addNode(String v) {

        if (nodes.contains(v)) {

            System.out.println("Node already present.");
            return;
        }

        ArrayList<Integer> temp = new ArrayList<>();

        nodeCount++;
        nodes.add(v);

        graph.add(temp);

        for (ArrayList<Integer> row : graph) {
            row.add(0);
        }

        for (int i = 0; i < nodeCount; i++) {
            temp.add(0);
        }

        System.out.println("Node " + v + " added successfully.");
    }

    public void addEdge(String v1, String v2) {

        if (!nodes.contains(v1)) {
            System.out.println(v1 + " not present.");
        }

        else if (!nodes.contains(v2)) {
            System.out.println(v2 + " not present.");
        }

        else {

            int index1 = nodes.indexOf(v1);
            int index2 = nodes.indexOf(v2);

            graph.get(index1).set(index2, 1);
            graph.get(index2).set(index1, 1);

            System.out.println("Edge added successfully.");
        }
    }

    public void addEdgeUW(String v1, String v2, int weight) {

        if (!nodes.contains(v1)) {
            System.out.println(v1 + " not present.");
        }

        else if (!nodes.contains(v2)) {
            System.out.println(v2 + " not present.");
        }

        else {

            int index1 = nodes.indexOf(v1);
            int index2 = nodes.indexOf(v2);

            graph.get(index1).set(index2, weight);
            graph.get(index2).set(index1, weight);

            System.out.println("Weighted undirected edge added.");
        }
    }

    public void addEdgeDW(String v1, String v2, int weight) {

        if (!nodes.contains(v1)) {
            System.out.println(v1 + " is not present in graph.");
        }

        else if (!nodes.contains(v2)) {
            System.out.println(v2 + " is not present in graph.");
        }

        else {

            int index1 = nodes.indexOf(v1);
            int index2 = nodes.indexOf(v2);

            graph.get(index1).set(index2, weight);

            System.out.println("Weighted directed edge added.");
        }
    }

    public void addEdgeDU(String v1, String v2) {

        if (!nodes.contains(v1)) {
            System.out.println(v1 + " is not present in graph.");
        }

        else if (!nodes.contains(v2)) {
            System.out.println(v2 + " is not present in graph.");
        }

        else {

            int index1 = nodes.indexOf(v1);
            int index2 = nodes.indexOf(v2);

            graph.get(index1).set(index2, 1);

            System.out.println("Directed unweighted edge added.");
        }
    }

    public void display() {

        if (nodeCount == 0) {

            System.out.println("Graph is empty.");
            return;
        }

        System.out.println("\nAdjacency Matrix:");

        System.out.print("    ");

        for (String node : nodes) {
            System.out.print(node + " ");
        }

        System.out.println();

        for (int i = 0; i < nodeCount; i++) {

            System.out.print(nodes.get(i) + " : ");

            for (int j = 0; j < nodeCount; j++) {
                System.out.print(graph.get(i).get(j) + " ");
            }

            System.out.println();
        }
    }

    public void delete(String v) {

        if (!nodes.contains(v)) {

            System.out.println(v + " is not present in graph.");
        }

        else {

            int index = nodes.indexOf(v);

            nodes.remove(index);
            graph.remove(index);

            for (ArrayList<Integer> row : graph) {
                row.remove(index);
            }

            nodeCount--;

            System.out.println("Node " + v + " deleted successfully.");
        }
    }
}