import java.util.Scanner;

public class case_ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite um numero:");
        int n1 = sc.nextInt();

        System.out.println("Digite outro numero");
        int n2 = sc.nextInt();

        System.out.println("Digite agora um sinal: %, +, -, *");
        String sinal = sc.next();

        switch (sinal) {
            case "+":
                System.out.println(n1 + n2);
                break;

            case "%":
                System.out.println(n1 % n2);
                break;

            case "-":
                System.out.println(n1 - n2);
                break;

            case "*":
                System.out.println(n1 * n2);
                break;

            default:
                System.out.println("Sinal inválido.");
                break;




        }
    }
}

