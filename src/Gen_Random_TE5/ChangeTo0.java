package Gen_Random_TE5;

class ChangeTo0 {
    static int[] changeTo0(int comb[]) {
        for (int i = 0; i < comb.length; i++) {
            if (comb[i] == 10) {
                comb[i] = 0;
            }
        }
        return comb;
    }
}
