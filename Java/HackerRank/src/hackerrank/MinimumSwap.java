// to complete not working
package hackerrank;

import java.util.*;
public class MinimumSwap {
   public static void main(String[] args) {
       Scanner in = new Scanner(System.in);
       
       // get array length
       int n = in.nextInt();
       
       // get array
       int[] a = new int[n];
       for(int i =0; i<n; i++){
           a[i] = in.nextInt();
       }
       
       int swap = 0;
       for(int i=0; i<n; i++){
           if(a[i] != i+1) {
               int tmp = a[i];
               a[i] = a[i+1];
               a[i+1] = tmp;
  
               swap++;
           }
       }
   } 
    
}
