Lista:

Em Java, uma List é uma interface da coleção de dados do pacote java.util que representa uma sequência ordenada de elementos. Ela faz parte da Java Collections Framework e é usada para armazenar, acessar e manipular uma lista de objetos.
Características principais:

    Ordenada: Os elementos em uma List têm uma ordem definida, e você pode acessar cada elemento por sua posição (índice).
    Permite duplicatas: Ao contrário de algumas outras coleções, uma List pode conter elementos duplicados.
    Flexível: O tamanho de uma List pode crescer ou diminuir dinamicamente, diferente de arrays, que têm tamanho fixo.

Implementações comuns:

    ArrayList: Uma implementação baseada em arrays dinâmicos. É eficiente para acessos rápidos por índice.
    LinkedList: Baseada em uma lista ligada. É mais eficiente para operações que envolvem inserções ou remoções frequentes.
    Vector: Uma implementação sincronizada (mais adequada para cenários de múltiplas threads, mas menos usada atualmente).

Exemplos de uso:
Exemplo 1: Criando e manipulando uma List com ArrayList

import java.util.ArrayList;
import java.util.List;

public class ExemploList {
    public static void main(String[] args) {
        // Criando uma lista de Strings
        List<String> nomes = new ArrayList<>();

        // Adicionando elementos à lista
        nomes.add("Ana");
        nomes.add("João");
        nomes.add("Lya");

        // Imprimindo todos os elementos da lista
        for (String nome : nomes) {
            System.out.println("Nome: " + nome);
        }

        // Acessando elementos por índice
        System.out.println("Primeiro nome: " + nomes.get(0)); // Output: Ana

        // Removendo um elemento
        nomes.remove("João");

        // Imprimindo novamente os elementos após a remoção
        System.out.println("Após remoção:");
        for (String nome : nomes) {
            System.out.println("Nome: " + nome);
        }
    }
}

Saída esperada:

Nome: Ana
Nome: João
Nome: Lya
Primeiro nome: Ana
Após remoção:
Nome: Ana
Nome: Lya

