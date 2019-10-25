package Gen_Random_TE5;

class GenRandom {


    static int[] comb() {
        int a = 2;
        int b = 8;
        int[] combination = new int[5];
        for (int i = 0; i < combination.length; i++) {
            combination[i] = a + (int) (Math.random() * b);
        }
        return combination;
    }

}
