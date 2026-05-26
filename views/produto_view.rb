class ProdutoView

  def menu_produto
    p "1 - Listar Produtos | 2 - Adicionar Produto | 3 - Editar Produto | 4 - Excluir Produto"
    opcao = gets.chomp.to_i

    case opcao
      when 1
        p "Listar todos os produtos"
      when 2
        p "Adicionar produto"
      when 3
        p "Editar produto"
      when 4
        p "remover um produto"
      else 
        p "Ops! Opção invalida"
      end    
  end



end
