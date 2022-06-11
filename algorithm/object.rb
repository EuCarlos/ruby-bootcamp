# Object basics
class User
    attr_accessor :name, :email, :age
end

user = User.new
user.name = "Carlos Alves"
user.email = "contato@carlos.dev"
user.age = 24

puts "_______________________________"
puts user.name
puts user.email
puts "#{user.age} anos"
puts "_______________________________"



# Constructors
class UserWithConstructor
    attr_accessor :name, :email, :age

    def initialize(name, email, age)
        self.name = name
        self.email = email
        self.age = age
    end

    def celebrate_birthday
        puts "FELIZ ANIVERSÁRIO!!!"
        self.age += 1
        puts "Agora #{self.name} completou #{self.age} anos"
    end
end

user_with_constructor = UserWithConstructor.new(
    'Flavio', 
    'contato@flavio.com.br', 
    19
)

puts "________________________________________________"
puts user_with_constructor.name
puts user_with_constructor.email
puts "#{user_with_constructor.age} anos de idade"
user_with_constructor.celebrate_birthday
puts "________________________________________________"