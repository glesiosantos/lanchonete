require_relative "../lib/produto"
require_relative "../repositorios/produto_repositorio"

class ProdutoView

  def initialize(repository)
    @repository = repository
  end

  def menu_produto
  loop do
    puts "1 - Listar Produtos | 2 - Adicionar Produto | 0 - Voltar"
    print "Escolha: "
    opcao = gets.chomp.to_i

    case opcao
    when 1
      produtos = @repository.listar

      puts "total de produtos: #{produtos.size}"

      produtos.each_with_index do |produto, index|
        puts "#{index + 1} - #{produto.titulo} - R$ #{produto.preco}"
      end

    when 2
      print "Nome produto: "
      titulo = gets.chomp

      print "Valor Produto R$: "
      preco = gets.chomp.to_f

      produto = Produto.new(titulo, preco)

      @repository.add(produto)

      puts "Produto cadastrado!"

    when 0
      break

    else
      puts "Opção inválida"
    end
  end
end

end
