# Utilizando uma collection do tipo Array, escreva um programa que receba 3 números 
# e no final exiba o resultado de cada um deles elevado a segunda potência.
i = 1
array = []
while i <= 3
    print "Digite o #{i}° número: "
    n = gets.chomp.to_i
    array.push(n) 
    i += 1
end

array.each do |numero|
    puts "#{numero} ^ 2 = #{numero ** 2}"
end
