import java.util.Scanner;

public class case_ex4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite um número para descobrir a estação do ano:");
        System.out.println("=================================================");
        System.out.println("DE 1 ATÉ 4:");
        int estacao = sc.nextInt();

        switch(estacao) {
            case 1:
                System.out.println(estacao + ":Primavera!");
                break;
            case 2:
                System.out.println(estacao + ":Verão!");
                break;
            case 3:
                System.out.println(estacao + ":Outono!");
                break;
            case 4:
                System.out.println(estacao + "Inverno!");
                break;
            default:
                System.out.println("valor inválido!");
        }
        System.out.println("Fim do seu programa!");

    }
}
