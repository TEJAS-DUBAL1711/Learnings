package DSA.TCSNQT.NumberProblems;
import java.util.*;

//*Armstrong Number*: Check if a number is an Armstrong number.
public class Armstrong {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number to check :");
        int num = sc.nextInt();
        int result = armStrong(num);

        if (result == num) {
            System.out.println(num + " is an Armstrong number.");
        } else {
            System.out.println(num + " is not an Armstrong number.");
        }
    }

    static int armStrong(int n) {
        int originalNumber = n; // Preserve the original number
        int count = 0;

        // Count the number of digits
        while (n != 0) {
            n = n / 10;
            count++;
        }

        // Reset n to the original number
        n = originalNumber;
        int temp = n;
        int ret = 0;

        // Calculate the Armstrong number
        while (temp != 0) {
            int rem = temp % 10;
            ret += (int) Math.pow(rem, count);
            temp = temp / 10;
        }

        // Return the result for comparison
        return ret;
    }
}

