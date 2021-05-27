# Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.

numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}
maior = 0
key = 0
numbers.each do |chave, valor|
    if valor > maior
        maior = valor
        key = chave
    end
end

print "O maior valor da hash numbers é: #{maior} e sua chave é #{key}."