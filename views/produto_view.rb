require_relative "../lib/produto"
require_relative "../repositorios/produto_repositorio"

class ProdutoView

  def initialize(repository)
    @repository = repository
  end

  def menu_produto
    p "1 - Listar Produtos | 2 - Adicionar Produto | 3 - Editar Produto | 4 - Excluir Produto"
    opcao = gets.chomp.to_i

    case opcao
      when 1
        @repository.listar.each_with_index do |produto, index|
            p "#{index} - #{produto.titulo} - R$ #{produto.preco}"
        end
      when 2
        p "Nome produto: "
        titulo = gets.chomp
        p "Valor Produto R$: "
        preco = gets.chomp.to_f

        @repository.add Produto.new titulo, preco
        
      when 3
        p "Editar produto"
      when 4
        p "remover um produto"
      else 
        p "Ops! Opção invalida"
      end
  end
end
