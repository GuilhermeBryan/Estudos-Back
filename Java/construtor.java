Em Java, o construtor também tem a função de inicializar um objeto da classe e definir valores iniciais para os atributos quando o objeto é criado.

O construtor é essencial em programação orientada a objetos porque ele garante que um objeto seja criado e inicializado corretamente. Ele desempenha um papel fundamental ao estabelecer o estado inicial de um objeto, tornando-o pronto para uso imediato. 

class Carro {
    String marca;
    String modelo;

    // Construtor com parâmetros
    public Carro(String marca, String modelo) {
        this.marca = marca;
        this.modelo = modelo;
    }

    // Construtor sem parâmetros (sobrecarga)
    public Carro() {
        this.marca = "Desconhecida";
        this.modelo = "Desconhecido";
    }
}



class Usuario {
    private String nome;
    private int idade;

    // Construtor
    public Usuario(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
        System.out.println("Usuário " + this.nome + " criado com sucesso.");
    }
}

public class Main {
    public static void main(String[] args) {
        Usuario usuario1 = new Usuario("Alice", 30);  // Chama o construtor
    }
}

