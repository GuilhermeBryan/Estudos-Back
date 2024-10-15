import java.util.Locale;

public class Main {
    public static void main(String[] args) {
        //declarando variaveis
        String Product1 = "Computer";
        String Product2 = "Office desk";

        int age = 30;
        int code = 5290;
        char gender = 'F';
        double price1 = 2100.0;
        double price2 = 650.50;
        double measure = 53.234567;

        //mostrando
        System.out.println("Products:");
        System.out.printf("%s, which price is $ %f%n", Product1, price1);
        System.out.printf("%s, wich price is $ %f%n", Product2, price2);

        System.out.printf("Record, %s years old, code %d and gender: %s%n", age, code, gender);

        System.out.printf("Measue with eight decimal places: %f%n", measure);
        System.out.printf("(three decimal places): %.3f%n", measure);
        Locale.setDefault(Locale.US);
        System.out.printf("US decimal point: %.3f%n", measure);





        }
    }
