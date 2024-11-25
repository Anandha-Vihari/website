import java.util.Scanner;

public class PrimeNumbers {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input from the user
        System.out.print("Enter the upper limit: ");
        int n = scanner.nextInt();

        printPrimes(n);
        scanner.close();
    }

    public static void printPrimes(int n) {
        if (n < 2) {
            System.out.println("No prime numbers.");
            return;
        }

        System.out.println("Prime numbers up to " + n + ":");
        for (int num = 2; num <= n; num++) {
            if (isPrime(num)) {
                System.out.print(num + " ");
            }
        }
    }

    public static boolean isPrime(int num) {
        if (num <= 1) return false;

        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) {
                return false;
            }
        }
        return true;
    }
}
