# Percorre uma coleção de forma parecida ao for, porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição.
# Each com Array
names = ['Joãozinho', 'Manoel', 'Juca']
name = 'Leonardo Scorza'

names.each do |name|
    puts name 
end

puts name

# Each com Hash
aulas = {'Aula 1 ' => 'liberada', 'Aula 2 ' => 'liberada', 'Aula 3 ' => 'liberada', 'Aula 4 ' => 'liberada', 'Aula 5 ' => 'em breve'}

aulas.each do |key, value|
    puts "#{key} #{value}"
end