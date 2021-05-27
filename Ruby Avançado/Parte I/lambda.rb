# Lambda é um bloco que pode ser armazenado em uma variável podendo executar várias vezes
first_lambda = lambda { puts "my first lambda"}
first_lambda.call

# Lambdas de uma linha podem usar ->
first_lambda = -> { puts "my first lambda"}
first_lambda.cal

# Lambdas podem receber parâmetros
first_lambda = -> (names){ names.each { |name |puts name} }
names = ["joão", "maria", "pedro"]
first_lambda.call(names)

# Lambda de várias linhas usa-se do..end
my_lambda = lambda do |numbers|
    index = 0
    puts 'Número atual + Próximo número'
    numbers.each do |number|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
        puts numbers[index] + numbers[index + 1]
        index += 1
    end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)

# Passando mais de um lambda como argumento de um método
def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = lambda { puts "my first lambda"}
second_lambda = lambda { puts "my second lambda"}

foo(first_lambda, second_lambda)