# Criar hash
capitais = Hash.new

# Inserir
capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}
hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano', [1,2,3] => 'Chave do tipo array'}
capitais[:minas_gerais] = "Belo Horizonte"

# Exibir
capitais[:minas_gerais]
capitais.keys
capitais.values

# Deletar
capitais.delete(:acre)

# Exibir tamanho
capitais.size

# Validar se está vazio
capitais.empty?
