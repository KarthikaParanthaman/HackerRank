
package hackerrank;

import java.util.*;
public class LeftRotation {
    public static void rotate(int[] a, int n, int r){
        int[] temp = new int[n];
        for(int i =0; i<n; i++) {
            int index = ((i - r)+ n ) % n;
            temp[index]=a[i];
        }
        for(int i=0; i<n; i++) {
            System.out.print(temp[i] + " ");
        }
    }
    
    public static void main(String[] args) {
       Scanner in = new Scanner(System.in);
       //size of array
       int n = in.nextInt();
       
       // number of rotation
       int rotate = in.nextInt();
       
       // get array
       int[] a = new int[n];
       for(int i=0; i<n; i++) {
           a[i] = in.nextInt();        
       }
       
       rotate(a, n, rotate);
    }
}
