import java.util.Scanner;

public class case_ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        char nota;

        System.out.println("Diga a nota do aluno:");
        nota = sc.next().charAt(0);

        switch (nota) {
            case 'A':
                System.out.println(nota + " EXCELENTE!");
                break;
            case 'B':
                System.out.println(nota + " MUITO BOM!");
                break;
            case 'C':
                System.out.println(nota + " BOM!");
            case 'D':
                System.out.println(" REGULAR.");
                break;
            case 'E':
            case 'F':
                System.out.println(nota + " INSUFICIENTE.");

            default:
                System.out.println("DIGITE A NOTA EM MAIUSCULO DE (A) A (F)");



        }
    }
}

