# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor.
# No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

i = 1
hash = Hash.new
while i <= 3
    print "Digite a #{i}° chave: "
    chave = gets.chomp
    print "Digite o valor da chave #{chave}: "
    valor = gets.chomp
    hash[chave] = valor
    i += 1
end

hash.each do |chave, valor|
    puts "Uma das chaves é #{chave} e o seu valor é #{valor}."
end