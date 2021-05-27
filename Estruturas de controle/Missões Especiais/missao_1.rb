# Utilizando as estruturas de iteração e condição, crie uma calculadora que ofereça ao usuário a opção de
# Multiplicar, Dividir, Adicionar ou Subtrair dois números.
# Não se esqueça de também permitir que o usuário feche o programa.
result = ''

loop do
    puts result
    puts '\n Calculadora'
    puts 'Digite a opção que deseja calcular: '
    puts '1- Adição'
    puts '2- Subtração'
    puts '3- Multiplicação'
    puts '4- Divisão'
    puts '0- Sair'
    opcao = gets.chomp.to_i

    case opcao
    when 1..4
        print '\n Digite o primeiro número: '
        n1 = gets.chomp.to_i
        print 'Digite o segundo número: '
        n2 = gets.chomp.to_i
        case opcao
        when 1
            result = "#{n1} + #{n2} = #{n1 + n2}"
        when 2
            result = "#{n1} - #{n2} = #{n1 - n2}"
        when 3
            result = "#{n1} * #{n2} = #{n1 * n2}"
        when 4
            result = "#{n1} / #{n2} = #{n1 / n2}"
        end
    when 0
        break
    else
        result = 'Opção inválida'
    end
    system 'clear'
end
