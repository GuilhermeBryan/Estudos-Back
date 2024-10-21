import java.util.Scanner;

public class ac_2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = 100;

        System.out.println("Digite um numero:");
        n -= sc.nextInt();

        System.out.println("Digite outro numero:");
        n -= sc.nextInt();

        System.out.println("valor final:" + n);

    }
}
