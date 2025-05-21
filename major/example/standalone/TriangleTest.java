import major.mutation.Config;
import triangle.Triangle;

import java.util.List;

public class TriangleTest{
    public static void main(String ... args){
        // Execute original version and gather coverage information
        Config.__M_NO=0;
        System.out.println("Original Result: "+Triangle.classify(1,1,1));

        System.out.println("\nCovered mutants:");
        // Get List of all covered mutants
        List<Integer> l = Config.getCoverageList();
        // Print all covered mutants
        for(Integer mut : l){
            System.out.print(mut+" ");
        }
        // Reset mutation coverage information
        Config.reset();
        
        // Iterate over covered mutants
        System.out.println("\n\nMutation analysis: ");
        for(Integer mut : l){
            // Enable a certain mutant
            Config.__M_NO=mut;
            System.out.println(mut+": "+Triangle.classify(1,1,1));
        }
    }
}
