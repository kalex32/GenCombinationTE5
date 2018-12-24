package Gen_Random_TE5;

import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        int[] comb1;
        do {
            comb1 = GenRandom.comb();
            System.out.println(Arrays.toString(comb1));

        } while (!CheckComb.check(comb1));
        System.out.println(Arrays.toString(ChangeTo0.changeTo0(comb1)));
    
    }
}
