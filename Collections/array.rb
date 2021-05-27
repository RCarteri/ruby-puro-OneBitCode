# Criar
estados = []

#Inserir
estados.push('Espírito Santo')
estados.push('Minas Gerais', 'Rio de Janeiro', 'São Paulo')
# Inserir em uma posição específica
estados.insert(0, 'Acre', 'Amapá')

# Exibir
puts estados
puts estados[1]
puts estados[-2]
# Exibe primeiro item
puts estados.first
# Exibe o último item
puts estados.last
# Exibe quantidade de itens
puts estados.count
puts estados.length
# Exibir intervalo
puts estados[2..5]
puts estados[-3..-1]

# Validar se tem um dado
puts estados.include?('São Paulo')

# Valida seo array está vazio
puts estados.empty?

# Deletar dado
estados.delete_at(2)
# Deleta o último dado
estados.pop
# Deleta o primeiro dado
estados.shift
