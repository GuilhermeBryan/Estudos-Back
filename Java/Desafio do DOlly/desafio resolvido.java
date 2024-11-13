package Programa;

import Classe.Caminhao;
import Classe.Carro;
import Classe.Moto;


import java.util.Scanner;

public class Program {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);


        System.out.println("BEM VINDO A LOCADORA DO XANDINHO!");
        System.out.println("=================================");
        System.out.println("IREMOS PEDIR ALGUMAS INFORMAÇÕES.");
        System.out.println("--------------------------------");
        System.out.println("DIGA O QUE VOCÊ ESTÁ DIRIGINDO [1]CARRO, [2]CAMINHAO, [3]MOTO:");
        int escolha = sc.nextInt();


        switch (escolha) {
            case 1:


                System.out.println("DIGA O MODELO DO SEU CARRO:");
                sc.nextLine();
                String modelo = sc.nextLine();

                System.out.println("DIGA A PLACA DO SEU CARRO:");
                String placa = sc.nextLine();

                System.out.println("DIGA O PREÇO POR DIA:");
                double precopordia = sc.nextDouble();

                System.out.println("QUANTOS DIAS ESTÁ ALUGADO?:");
                int dias = sc.nextInt();

                System.out.println("QUAL A DISTANCIA INICIAL?:");
                int inicio = sc.nextInt();

                System.out.println("QUAL A DISTANCIA FINAL?:");
                int fim = sc.nextInt();


                Carro carro = new Carro(modelo, placa, precopordia);

                System.out.println("MODELO:" + carro.getModelo());
                System.out.println("PLACA:" + carro.getPlacaDoVeiculo());
                System.out.printf("PREÇO TOTAL:%.2f%n", carro.calcularpreco(dias));
                System.out.printf("A DISTANCIA TOTAL PERCORRIDA FOI: %d%n", carro.mover(inicio, fim));


                break;

            case 2:
                System.out.println("DIGA O MODELO DO SEU CAMINHÃO:");
                sc.nextLine();
                modelo = sc.nextLine();

                System.out.println("DIGA A PLACA DO SEU CAMINHÃO:");
                placa = sc.nextLine();

                System.out.println("DIGA O PREÇ0 POR CAMINHÃO:");
                precopordia = sc.nextDouble();

                System.out.println("QUANTOS DIAS ESTÁ ALUGADO?:");
                dias = sc.nextInt();

                System.out.println("QUAL A DISTANCIA INICIAL?:");
                inicio = sc.nextInt();

                System.out.println("QUAL A DISTANCIA FINAL?:");
                fim = sc.nextInt();



                Caminhao caminhao = new Caminhao(modelo, placa, precopordia);


                System.out.println("MODELO:" + caminhao.getModelo());
                System.out.println("PLACA:" + caminhao.getPlacaDoVeiculo());
                System.out.printf("PREÇO TOTAL:%.2f%n", caminhao.calcularpreco(dias));
                System.out.printf("A DISTANCIA TOTAL PERCORRIDA FOI: %d%n", caminhao.mover(inicio, fim));

                break;

            case 3:
                System.out.println("DIGA O MODELO DA SUA MOTO:");
                sc.nextLine();
                modelo = sc.nextLine();

                System.out.println("DIGA A PLACA DA SUA MOTO:");
                placa = sc.nextLine();

                System.out.println("DIGA O PREÇ0 POR DIA:");
                precopordia = sc.nextDouble();

                System.out.println("QUANTOS DIAS ESTÁ ALUGADO?:");
                dias = sc.nextInt();

                System.out.println("QUAL A DISTANCIA INICIAL?:");
                inicio = sc.nextInt();

                System.out.println("QUAL A DISTANCIA FINAL?:");
                fim = sc.nextInt();

                Moto moto = new Moto(modelo, placa, precopordia);

                System.out.println("MODELO:" + moto.getModelo());
                System.out.println("PLACA:" + moto.getPlacaDoVeiculo());
                System.out.printf("PREÇO TOTAL:%.2f%n", moto.calcularpreco(dias));
                System.out.printf("A DISTANCIA TOTAL PERCORRIDA FOI: %d%n", moto.mover(inicio, fim));


            default:
                System.out.println("SINTAXE INVÁLIDA!");

               break;










        }




    }
}

package Classe;

import Interface.Movimentavel;

public abstract class Veiculo implements Movimentavel {
    protected String modelo;
    protected String placaDoVeiculo;
    protected double precoPorDia;

    //construtor
    public Veiculo (String modelo, String placaDoVeiculo, double precoPorDia) {
        this.modelo = modelo;
        this.placaDoVeiculo = placaDoVeiculo;
        this.precoPorDia = precoPorDia;
    }

    public String getModelo() {
        return modelo;
    }

    public String getPlacaDoVeiculo() {
        return placaDoVeiculo;
    }

    public double getPrecoPorDia() {
        return precoPorDia;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setPlacaDoVeiculo(String placaDoVeiculo) {
        this.placaDoVeiculo = placaDoVeiculo;
    }

    public void setPrecoPorDia(double precoPorDia) {
        this.precoPorDia = precoPorDia;
    }

    //interface
    @Override
    public int mover(int x, int y) {
        int mensagem = x + y;
        return mensagem;

    }

    public double calcularpreco(int dias) {
        double precototal = precoPorDia * dias;
        return precototal;

    }
}

package Classe;

public class Carro extends Veiculo {
    private double acrescimo = 10.0;

    public Carro(String modelo, String placaDoVeiculo, double precoPorDia) {
        super(modelo, placaDoVeiculo, precoPorDia);
    }


    @Override
    public int mover(int x, int y) {
        return super.mover(x, y);
    }

    @Override
    public double calcularpreco(int dias) {
        super.calcularpreco(dias);
        double precototal = (precoPorDia * dias) * (1 + acrescimo / 100);
      //  double precototal = precoPorDia * dias * acrescimo * 1,1;
        return precototal;
    }

}

package Classe;

public class Caminhao extends Veiculo {
    private double acrescimo = 20.0;

   public Caminhao(String modelo, String placadoveiculo, double precopordia) {
       super(modelo, placadoveiculo, precopordia);
   }

    @Override
    public int mover(int x, int y) {
        return super.mover(x, y);
    }

    @Override
    public double calcularpreco(int dias) {
        super.calcularpreco(dias);
        double precototal = (precoPorDia * dias) * (1 + acrescimo / 100);
        return precototal;
    }
}
package Classe;

public class Moto extends Veiculo{
    private double acrescimo = 5.0;

    public Moto(String modelo, String placadoveiculo, double precopordia) {
        super(modelo, placadoveiculo, precopordia);
    }

    @Override
    public int mover(int x, int y) {
        return super.mover(x, y);
    }
    @Override
    public double calcularpreco(int dias) {
        super.calcularpreco(dias);
        double precototal = (precoPorDia * dias) * (1 + acrescimo / 100);
        return precototal;
    }
}

package Interface;

public interface Movimentavel {

 int mover(int x, int y);

}

