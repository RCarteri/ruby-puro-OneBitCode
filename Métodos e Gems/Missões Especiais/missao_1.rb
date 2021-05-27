# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente.
# Estes dois valores devem ser informados pelo usuário.
def potencia numero, expoente
    numero ** expoente
end

puts "Calculadora de potênciação!"

print "Digite o número: "
numero = gets.chomp.to_i

print "Digite o expoente: "
expoente = gets.chomp.to_i

result = potencia numero,expoente
puts "#{numero} no expoente #{expoente} é #{result}."
