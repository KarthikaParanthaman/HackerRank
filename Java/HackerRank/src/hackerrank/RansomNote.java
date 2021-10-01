
package hackerrank;



import java.util.*;
public class RansomNote {
    
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        
        // no of ords in magazine
        int m = in.nextInt();
                
        // no of words in notes
        int n = in.nextInt();
        in.nextLine();
        
        String magazine = in.nextLine();           
        String notes = in.nextLine();

        String[] notes_arr = notes.split(" ");
        String[] magazine_arr = magazine.split(" ");
        
        HashMap<String, Integer> hm = new HashMap<String, Integer>();
        for(int i = 0; i < m; i++){
            if(hm.containsKey(magazine_arr[i])){
                hm.put(magazine_arr[i], hm.get(magazine_arr[i])+1);
            } else {
                 hm.put(magazine_arr[i], 1);
            }           
        }
        boolean present = true;
        for(int i = 0; i < n; i++) {
            
            if(hm.containsKey(notes_arr[i])){
                int count = hm.get(notes_arr[i]);
                if(count > 0) {
                 hm.put((notes_arr[i]), count-1);  
               } else {
                  System.out.println("No"); 
                  present = false;
                  break;
               }             
            } else {
                  System.out.println("No"); 
                  present = false;
                  break;
               }           
            }
            if(present == true)
                System.out.println("Yes");
        }          
    }    

