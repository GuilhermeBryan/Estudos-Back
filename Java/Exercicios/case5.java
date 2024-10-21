import java.util.Scanner;
public class case_ex5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Digite o valor a ser convertido:");
        double valor = scanner.nextDouble();

        System.out.println("Escolha a unidade de destino (1 para metros, 2 para quilômetros, 3 para centímetros):");
        int unidade = scanner.nextInt();

        switch (unidade) {
            case 1:
                System.out.println("Valor em metros: " + valor);
                break;
            case 2:
                System.out.println("Valor em quilômetros: " + (valor / 1000));
                break;
            case 3:
                System.out.println("Valor em centímetros: " + (valor * 100));
                break;
            default:
                System.out.println("Unidade inválida.");
        }
    }
}

