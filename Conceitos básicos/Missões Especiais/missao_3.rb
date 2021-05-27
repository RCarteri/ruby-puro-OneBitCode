# Crie um programa que que receba dois números inteiros e no final exiba a soma, subtração, multiplicação e divisão entre eles.
print "Digite o primeiro número: "
n1 = gets.chomp.to_i

print "Digite o segundo número: "
n2 = gets.chomp.to_i

puts "#{n1} + #{n2} = #{n1 + n2}"
puts "#{n1} - #{n2} = #{n1 - n2}"
puts "#{n1} * #{n2} = #{n1 * n2}"
puts "#{n1} / #{n2} = #{n1 / n2}"