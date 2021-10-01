package hackerrank;


import java.util.*;
public class CountTriplets {
    public static int getpower(int num,int r) {
        int power = -1;
        while(num > 0){
            num = num/r ;
            power++;
        }
        return power;
    }
    
    public static void main(String[] args) {       
        Scanner in = new Scanner(System.in);
        
        // get n
        int n = in.nextInt();
        
        // get r
        int r = in.nextInt();
        in.nextLine();
        HashMap<Integer, Integer> hm = new HashMap<Integer, Integer>();
        
        // creates hashmap of power and number of occurence
        for(int i=0; i<n; i++){
            int num = in.nextInt();
            
            int power = getpower(num, r);
            
            if(hm.containsKey(power)){
                hm.put(power, hm.get(power)+1);
            } else {
                hm.put(power, 1);
            }
            
        } 
        
 

    }
}
