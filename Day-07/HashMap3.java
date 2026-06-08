import java.util.*;
public class HashMap3 {
    public static void main(String [] args){
        HashMap<Integer ,String > hm  = new HashMap<>();
        HashMap<Integer,String> h = new HashMap<>();
        //int age;
        //String name;
        System.out.println("Q2-----------: ");
        hm.put(30,"Disha");
        hm.put(31,"Esha");
        hm.put(32,"Saijal");
        hm.put(33,"Pallavi");
        hm.put(34,"Esha");
        System.out.println(hm);
        System.out.println("Q2-----------");
        for(Map.Entry<Integer, String> m: hm.entrySet()){
            System.out.println(m.getKey()+" "+m.getValue());
        }
        System.out.println("Q3-----------");
        System.out.println(hm);
        hm.remove(32);
        System.out.println(hm);
        System.out.println("Q4-----------");
        System.out.println(hm.containsKey(32));
        System.out.println("Q5-----------");
        for(Map.Entry<Integer, String> m: hm.entrySet()){
            System.out.println("Name: "+ m.getValue());
            System.out.println("Age: "+ m.getKey());
        }
        System.out.println("Q6-----------");
        h.put(32,"Saijal");
        h.put(35,"Vishwa");
        hm.putAll(h);
        System.out.println(hm);
 
        System.out.println("Q7-----------");
        HashMap<String,Integer> freq = new HashMap<>();
        for(String name: hm.values()){
            freq.put(name,freq.getOrDefault(name,0)+1);
            System.out.println("Frequency of "+name+" is: "+freq.get(name));
        }
        System.out.println("Q8-----------");
        HashMap<Integer, Integer> hm2 = new HashMap<>();
        if(hm2.isEmpty()){
            System.out.println("HashMap is empty");
        }
        System.out.println("Q9-----------");
        hm2.put(100, 65);
        hm2.put(101, 33);
        hm2.put(102, 87);
        hm2.put(103, 76);
        hm2.put(104, 45);
        int max=0,key=0;
        for(Map.Entry<Integer, Integer> m : hm2.entrySet()){
            if(m.getValue()>max){
                max=m.getValue();
                key=m.getKey();
            }
        }
        System.out.println("Maximum value is: "+max+" at key: "+key);
        System.out.println("Q10-----------");
        HashMap<String,Integer> hm3 =new HashMap<>();
        for(Map.Entry<String,Integer> m: hm3.entrySet()){
            
        }
    }
}
