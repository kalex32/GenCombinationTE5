package Gen_Random_TE5;

class GenRandom {


    static int[] comb() {
        int[] combination = new int[5];
        for (int i = 0; i < combination.length; i++) {
            combination[i] = (int) ((Math.random() * 10) + 1);
        }
        return combination;
    }

}
