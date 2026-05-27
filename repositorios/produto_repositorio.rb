class ProdutoRepositorio 
  
  def initialize
    @produtos = []
  end

  def add(produto)
    @produtos.push produto
  end

  def listar
    @produtos
  end

end

