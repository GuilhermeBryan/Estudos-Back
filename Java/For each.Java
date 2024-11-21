For each:

Sintaxe opcional e simplificada para percorrer coleções:

Sintaxe:

for (tipo apelido:coleção) {
	comando 1
	comando 2
}


exclusivo para vetores

O ChatGPT disse:

O laço for each é uma estrutura de repetição usada para percorrer todos os elementos de uma coleção, como um vetor, uma lista ou outro tipo de estrutura de dados. Ele é especialmente útil quando você quer realizar uma ação para cada elemento de forma simples e direta, sem precisar gerenciar índices manualmente.

EX:

public class ExemploForEach {

    public static void main(String[] args) {
    
        // Declarando e inicializando um array de nomes
        String[] nomes = {"Ana", "João", "Lya"};

        // Usando o laço for-each para percorrer o array
        for (String nome : nomes) {
            System.out.println("O nome é: " + nome);
        }
    }
}

