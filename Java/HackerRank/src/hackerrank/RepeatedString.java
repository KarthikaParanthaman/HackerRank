
package hackerrank;

import java.util.*;
public class RepeatedString {
    
    public static int counta(String str, int length){
        int count = 0;
        for(int i = 0; i < length;i++) {
            if(str.charAt(i) == 'a'){
                count++;
            }
        }
        return count;
    }
    
    public static void main(String[] args){
       Scanner in = new Scanner(System.in) ;
       String str = in.nextLine();
       int strlen = str.length();
       
       long num = in.nextLong();
       
       int count = counta(str, str.length());
       
       long total = (num/strlen) * count ;
       int rem = (int)(num%strlen) ;

       if(rem > 0){
         total += counta(str, rem);
       }
       
       System.out.println(total);
    }
    
}
//epsxyyflvrrrxzvnoenvpegvuonodjoxfwdmcvwctmekpsnamchznsoxaklzjgrqruyzavshfbmuhdwwmpbkwcuomqhiyvuztwvq
//549382313570

