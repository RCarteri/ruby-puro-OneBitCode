# Crie um módulo chamado Person com as classes Juridic e Physical.
# Ao executar a instrução
#   Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
# Seu código deverá retornar
# E com a instrução
#   Person::Physical.new('José Almeida', '425.123.123-123').add
# Deverá retornar
require 'documentos_br'
module Person
    class Juridic
        def initialize nome, cnpj
            @nome = nome
            @cnpj = cnpj
        end
        def add
            puts 'Pessoa Jurídica adicionada'
            puts "nome: #{@nome}"
            puts "cnpj: #{@cnpj.to_cnpj_format}"
        end
    end
    class Physical 
        def initialize nome, cpf
            @nome = nome
            @cpf = cpf
        end
        def add
            puts 'Pessoa Física adicionada'
            puts "nome: #{@nome}"
            puts "cpf: #{@cpf.to_cpf_format}"
        end
    end
end

Person::Juridic.new('M. C. Investimentos', '61287395000140').add
Person::Physical.new('José Almeida', '02542743070').add