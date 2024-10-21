import java.util.Scanner;

public class ac_1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int total = - 0;

        System.out.println("Digite o primeiro número:");
        total += scanner.nextInt();

        System.out.println("Digite o segundo número:");
        total += scanner.nextInt();

        System.out.println("Digite o terceiro número:");
        total += scanner.nextInt();

        System.out.println("Valor final: " + total);
    }
}

