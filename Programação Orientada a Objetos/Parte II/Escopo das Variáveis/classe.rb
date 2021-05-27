# É declarada com o prefixo @@.
# Pode ser acessada em qualquer lugar da classe onde foi declarada e
# seu valor é compartilhado entre todas as instâncias de sua classe.
class User
    @@user_count = 0
    def add(name)
        puts "User #{name} adicionado"
        @@user_count += 1
        puts @@user_count
    end
end

first_user = User.new
first_user.add('João')

second_user = User.new
second_user.add('Mario')