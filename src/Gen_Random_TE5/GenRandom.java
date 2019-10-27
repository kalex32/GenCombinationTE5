package Gen_Random_TE5;

import java.util.Scanner;

class GenRandom {


    static int[] comb() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите максимальную высоту пина: ");
        int maxPin = scanner.nextInt();
        System.out.println("Введите минимальную высоту пина: ");
        int minPin = scanner.nextInt()-1;
        int[] combination = new int[5];
        for (int i = 0; i < combination.length; i++) {
            combination[i] = maxPin + (int) (Math.random() * minPin);
        }
        return combination;
    }

}
