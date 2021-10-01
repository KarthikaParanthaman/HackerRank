
package hackerrank;

import java.util.*;
public class SaleByMatch {
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        Hashtable <Integer, Integer> h = new Hashtable<Integer, Integer>();
        
        int count = 0 ; // counts number of pair
        for(int i=0; i<n; i++){
            int a= in.nextInt();
            
            if(h.get(a)== null){
                h.put(a,1);
            }else{
                h.remove(a);
                count++;
            }
        }
        System.out.print(count);
    }
    
}
