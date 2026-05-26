require_relative "lib/util"
require_relative "views/produto_view"

tela = Util.new
loop = true

while loop
  tela.gerar_titulo "Sistema de Lanchonete"
  p "1 - Produto | 2 - Cliente | 3 - Pedidos | 0 - Sair"

  p "Selecione a opção"
  opcao = gets.chomp.to_i

  case opcao
    when 0
      puts "Sair do sistema"
      loop = false
    when 1
      tela.gerar_titulo "SL - PRODUTO"
      produto_view = ProdutoView.new
      produto_view.menu_produto
    when 2 
      p "Janela de cliente"
    when 3
      p "Janela de Pedido"
    else
      p "Ops! Opção invalida"
    end
end  




