
class Pessoa
  def initialize(nome, idade, nacionalidade)
    @nome = nome
    @idade = idade
    @nacionalidade = nacionalidade
  end

  def apresentar
    puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos e sou #{@nacionalidade}."
  end
end

# Criando uma instância da classe Pessoa
pessoa1 = Pessoa.new("Maria", 30, "Brasileira")

# Chamando o método 'apresentar' na instância
pessoa1.apresentar
