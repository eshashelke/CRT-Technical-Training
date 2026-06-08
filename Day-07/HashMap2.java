import java.util.*;
public class HashMap2 {
    public static void main(String [] args){
        //LinkedHashMap<Integer,String> hm =new LinkedHashMap<>();
        HashMap<Integer,String> hm =new HashMap<>();
        hm.put(100, "Disha");
        hm.put(102,"Saijal");
        hm.put(101,"Pallavi");
        hm.put(104, "Shreya");
        hm.put(105,"Sumedh");
        hm.put(103,"Ishan");
        System.out.println("1----------------");
        System.out.println(hm);
        System.out.println("2----------------");
        for(Map.Entry<Integer, String> m: hm.entrySet()){
            System.out.println(m.getKey()+" "+m.getValue());
        }
        Set<Integer> s=hm.keySet();
        System.out.println("3----------------");
        System.out.println(s);
        Collection<String> c = hm.values();
        System.out.println("4----------------");
        System.out.println(c);
        Set<Map.Entry<Integer, String>> s1 = hm.entrySet();
        System.out.println("5----------------");
        System.out.println(s1);
        Iterator<Map.Entry<Integer, String>> it = s1.iterator();
        System.out.println("6----------------");
        while(it.hasNext()){
            Map.Entry<Integer, String> m1 = it.next();
            System.out.println(m1.getKey()+" "+m1.getValue());
            if(m1.getKey().equals(100)){
                m1.setValue("Bala");
            }
            System.out.println(m1);
        }
    }
}
