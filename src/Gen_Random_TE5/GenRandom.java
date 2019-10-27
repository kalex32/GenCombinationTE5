package Gen_Random_TE5;

import java.util.Scanner;

class GenRandom {
    static int maxPin() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите максимальную высоту пина: ");
        int maxPin = scanner.nextInt();
        scanner.close();
        return maxPin;
    }
    static int minPin(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Введите минимальную высоту пина: ");
        int minPin = scanner.nextInt();
        scanner.close();
        return minPin;
    }

    static int[] comb(int maxPin, int minPin) {

        int[] combination = new int[5];
        for (int i = 0; i < combination.length; i++) {
            combination[i] = maxPin + (int) (Math.random() * minPin);
        }
        return combination;
    }

}
