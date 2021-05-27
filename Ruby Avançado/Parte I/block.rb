# EXEMPLOS DE BLOCOS

5.times { puts "Exec the block" }

# Bloco de uma linha
sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number }
puts sum

# Bloco de várias linhas com do..end
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts '---'
end

foo = {2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts '---'
end

# Passando o bloco como argumento e chamando-o
def foo
    # Call the block
    yield
    yield
end
    
foo { puts "Exec the block"}

# Validando se o bloco foi passado como argumento, block_given?
def foo
    if block_given?
        # Call the block
        yield
    else
        puts "Sem parâmetro do tipo bloco"
    end
end

foo
foo { puts "Com parâmetro do tipo bloco"}

# Recebendo vários argumentos e um sendo um bloco, &. Para chamar usa-se .call
def foo(name, &block)
    @name = name
    block.call
end

foo('Leonardo') { puts "Hellow #{@name}" }

# Usando um bloco com várias linhas como parâmetro
def foo(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }

foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "---"
end