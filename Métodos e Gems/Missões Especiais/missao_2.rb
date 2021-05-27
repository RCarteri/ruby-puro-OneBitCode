# Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf 
# e em um método verifique se este número é válido.

# gem install cpf_cnpj

require "cpf_cnpj"
puts "Validador de CPF!"
print "Digite um CPF (somente números) para validar: "
numero = gets.chomp
cpf = CPF.new(numero)

def validar cpf
    if CPF.valid?(cpf)
        "valido"
    else
        "inválido"
    end
end

cpf = cpf.formatted 
valido = validar cpf
print "O CPF #{cpf} é #{valido}."