
package hackerrank;

import java.util.*;

public class MakingAnagram {
   public static void main(String[] args) {
       Scanner in = new Scanner(System.in);
       String s1 = in.nextLine();
       String s2 = in.nextLine();
       
       int delete_count = 0;
       for(int i =0; i<s1.length(); i++){
           String s = s1.substring(i, i+1);
           //System.out.println(s);
           if(s2.contains(s)){
               s2=s2.replaceFirst(s,"");
           } else{
               delete_count++;
           }
       }
       System.out.print(s2.length()+delete_count);
   }
}
