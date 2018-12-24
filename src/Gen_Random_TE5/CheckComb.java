package Gen_Random_TE5;

class CheckComb {

    private static int jump = 6;

    static void setJump(int jump) {
        CheckComb.jump = jump;
    }

    static boolean check(int combination[]) {
        for (int i = 0; i < combination.length - 1; i++) {
            if (Math.abs(combination[i] - combination[i + 1]) > jump) {
                return false;
            }
        }
        for (int j = 0; j < combination.length - 2; j++) {
            if (combination[j] == combination[j + 1] && combination[j] == combination[j + 2]) {
                return false;
            }
        }


        return true;
    }
}
