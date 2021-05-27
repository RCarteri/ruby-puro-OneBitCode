# Métodos privados não podem ser chamads de fora da classe
class Foo
    def call_private
        bar
    end
    
    private
    
    def bar
        puts "private method"
    end
end
    
foo = Foo.new
foo.call_private
foo.bar
