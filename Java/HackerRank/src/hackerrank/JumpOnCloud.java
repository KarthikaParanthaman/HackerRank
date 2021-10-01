
package hackerrank;
import java.util.*;
public class JumpOnCloud {
    
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        
        int jump = 0;
       // int current =0;
       // int next = 0;
        // get input of clouds
        int[] a = new int[n];
        for(int i = 0; i < n; i++) {
            a[i] = in.nextInt();
        }
        int i = 0;
        while(i < n){
          if(i+2 < n && a[i+2] == 0){
              jump++;
              i=i+2;
              continue;
          } else if(i+1 < n && a[i+1] == 0 ){
              jump++;
              i = i+1;
              continue;
          } else {
              break;
          }
          
      }
        System.out.println(jump);
    }
    
}
