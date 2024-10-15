import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n;

        System.out.println("DESCUBRA SE O NÚMERO É PAR OU IMPAR:");
        n = sc.nextInt();

        if (n % 2 == 0) {
            System.out.println("PAR");
        } else {
            System.out.println("IMPAR");


        }
    }
}
