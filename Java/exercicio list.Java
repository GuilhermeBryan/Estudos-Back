package Program;
import Entidades.Funcionario;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Program {
    public static void main(String[] args) {
        //Scanner
        Scanner sc = new Scanner(System.in);
        //Criando lista funcionario utilizando a classe Funcionario
        List<Funcionario> funcionarioList = new ArrayList<>();


        //Perguntando quantos quartos seram alugados
        System.out.println("QUANTOS QUARTOS SERAM ALUGADOS:");
        int n = sc.nextInt();

        //For para percorrer os quartos alugados e pedir as informações do cliente
        for (int r = 0; r < n; r++) {

            System.out.println("Quarto:" + (r + 1));
            System.out.println("QUAL SEU ID:");
            Integer id = sc.nextInt();
            System.out.println("QUAL SEU NOME:");
            sc.nextLine();
            String nome = sc.nextLine();
            System.out.println("QUAL SEU SALARIO?");
            Double salario = sc.nextDouble();

            //Instanciando o objeto funcionario para parametrado
            Funcionario funcionario = new Funcionario(id, nome, salario);

            //adicionando o objeto funcionario a lista
            funcionarioList.add(funcionario);


        }

        //perguntando o ID do usuario que ira acrescentar uma porcentagem
        System.out.println("DIGITE O USUARIO QUE IRA ADICIONAR A PORCENTAGEM:");
        //criando a variavel temporaria usuarioporcentagem
        Integer usuarioporcentagem = sc.nextInt();
        //criando a varivael procurar id utilizando a função fora do escopo ProcurarId
        //esta funcao esta percorrendo a lista para ver se há o ID do usuario existente, caso não haja
        //ele mostrara a mensagem ID NÃO ENCONTRADO
        Integer procurarid = ProcurarId(funcionarioList,usuarioporcentagem);
        if (procurarid == null) {
            System.out.println("ID NÃO ENCONTRADO!");
        }
        else {
            System.out.println("DIGA UMA PORCENTAGEM:");
            Double porcentagem = sc.nextDouble();
            funcionarioList.get(procurarid);

        }

        System.out.println("LISTA DE FUNCIONARIOS:");
        for (Funcionario funcionario : funcionarioList) {
            System.out.println(funcionarioList);
        }
;





    }

    //função para percorrer a lista e ver se o ID existe
    public static Integer ProcurarId(List<Funcionario> funcionario, Integer id) {
        for (int r = 0; r < funcionario.size(); r++) {
            if (funcionario.get(r).getId() == id) {
                return r;
            }
        }
        return null;
    }



    }
    
    
    
    
    package Entidades;

public class Funcionario {
    private Integer id;
    private String nome;
    private Double salario;

    public Funcionario(Integer id, String nome, Double salario) {
        this.id = id;
        this.nome = nome;
        this.salario = salario;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
    }

    public double acrescimoSalario(Double acrescimo) {
        return salario *  acrescimo / 100;
    }


    @Override
    public String toString() {
        return
                "ID=" + id +
                ", NOME=" + nome +
                ", SALARIO=" + salario;
    }
}



