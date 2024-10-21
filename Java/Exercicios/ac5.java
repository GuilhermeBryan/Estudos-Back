import java.util.Scanner;

public class ac_5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite um número:");
        int valor = scanner.nextInt();

        valor %= 3;

        System.out.println("O resto da divisão por 3 é: " + valor);
    }
}

