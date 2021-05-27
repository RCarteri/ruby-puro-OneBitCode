require_relative 'produto'
require_relative 'mercado'

produto = Produto.new

produto.nome = 'Batata'
produto.preco = 70.0

Mercado.new(produto.nome, produto.preco).comprar