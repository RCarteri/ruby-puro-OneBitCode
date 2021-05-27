def compare (a, b)
    a > b
end

a = 1
b = 2

result = compare a, b

puts "O resultado da comparação é #{result}"

def retorno
    12
    "hello"
end

puts retorno

# Se uasr o return ele vai retornar o valor, senão é sempre a última linha como no exemplo acima
def retorno
    return 12
    "hello"
end

puts retorno