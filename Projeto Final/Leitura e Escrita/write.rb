# Abrir arquivo e adicionar os elemendos no final com o parâmetro 'a' de append

# r" - somente leitura desde o início do arquivo (modo padrão)
# "r +" - leitura / gravação desde o início do arquivo
# "w" - somente gravação, sobrescrevendo todo o arquivo existente ou criando um novo se nenhum existir
# "w +" - ler / escrever, sobrescrever todo o arquivo existente ou criar um novo se nenhum existir
# "a" - somente gravação, começando no final do arquivo existente ou criando um novo se nenhum existir
# "a +" - leitura / gravação, começando no final do arquivo existente ou criando um novo se nenhum existisse

File.open('shopping-list.txt', 'a') do |line|
    line.puts('arroz')
    line.puts('feijão')
    line.print('azeite')
    line.print(' de ')
    line.print('oliva')
end