


package DSA.TCSNQT.NumberProblems;

import java.util.Scanner;

public class asked {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter s and e:");
        int lowerBound = sc.nextInt();
        int upperBound = sc.nextInt();
        sc.close();

        if (lowerBound > upperBound) {
            System.out.println("Invalid input: lower bound is greater than upper bound.");
            return;
        }

        int sumOfArmstrongNumbers = 0;
        for (int i = lowerBound; i <= upperBound; i++) {
            int temp = i;
            int count = 0;
            while (temp != 0) {
                count++;
                temp /= 10;
            }

            int sum = 0;
            temp = i;
            while (temp != 0) {
                int digit = temp % 10;
                sum += Math.pow(digit, count);
                temp /= 10;
            }

            if (sum == i) {
                sumOfArmstrongNumbers += i;
            }
        }
        System.out.println(sumOfArmstrongNumbers);
    }
}

