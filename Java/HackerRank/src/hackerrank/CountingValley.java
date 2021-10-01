/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hackerrank;

/**
 *
 * @author Karthika.P1
 */
import java.util.*;

public class CountingValley {
    public static void main(String[] args){
        
        // get input from console
        Scanner in = new Scanner(System.in);
        
        // get input string length
        int n = Integer.parseInt(in.nextLine());
        
        // get input string
        String path = in.nextLine();
        
       
       int height = 0;
        int valley = 0;
        for(int i = 0; i < n; i++) {
            if(path.charAt(i) == 'U') 
                height++;
            if(path.charAt(i) == 'D'){ //VALLEY 
                
                if(height == 0){
                    valley++;
                }
                height--;
            }
                
        }
        System.out.print(valley);
    }    
}
