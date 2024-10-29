import java.util.Scanner;

public class For_ex1 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int X = sc.nextInt();

        for (int l = 1; l < X; l++) {
            if (l % 2 != 0) {
                System.out.println(l);
            }


        }
    }
}

