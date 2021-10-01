package hackerrank;

import java.util.*;
public class NewYearChaos {
    
    
    public static int countSwap(int[] list, int n) {
        int swap = 0;
        
        for(int i=n-1; i>=0; i--){
            // check if swap occured in list[i]
            int value = i+1;
            if(list[i] != value){
                if(i-1 >= 0 && list[i-1] == value){
                    list[i-1] = list[i];
                    list[i] = value;
                    swap++;                    
                }else if( i-2 >= 0 && list[i-2] == value){
                    list[i-2] = list[i-1];
                    list[i-1] = list[i];
                    list[i] = value;
                    swap += 2;
                }else {
                    return -1;
                }
            }
        }
        return swap;
    }
    
    public static void main(String[] args){
        
      Scanner in = new Scanner(System.in)  ;
      int n = in.nextInt(); // number of test case
      int[] count = new int[n]; // to hold length of each case
      int[] result = new int[n];
      
      // getting input
      for(int i=0; i < n; i++) {
          
          // passenger count
          count[i] = in.nextInt();
          
          // passenger list
          int[] list = new int[count[i]]; 
          
          for(int j = 0; j < count[i]; j++) {
              list[j] = in.nextInt();
          }
          result[i]= countSwap(list, count[i]);
      }
      
      for(int i=0; i < n; i++) {
          if(result[i] == -1){
              System.out.println("Too chaotic");
              continue;
          }
          System.out.println(result[i]);
      }
     
    }
}
