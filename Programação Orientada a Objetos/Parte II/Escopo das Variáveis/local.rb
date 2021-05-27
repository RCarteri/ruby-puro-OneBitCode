# É declarada com a primeira letra de seu nome sendo uma letra minúscula ou sublinhado.
# Pode ser acessada apenas onde foi criada.
class Bar
    def foo
        # Pode ser definida como local ou _local 
        local = 'local é acessada apenas dentro deste metodo'
        print local
    end
end

bar = Bar.new
bar.foo