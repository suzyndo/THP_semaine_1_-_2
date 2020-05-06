require 'rubygems'
require 'pry'

class User
  
  attr_accessor :email
  @@user_count = 0

  def initialize(email_to_save)
    @email = email_to_save
    puts "On envoie un email de bienvenue"
    @@user_count = @@user_count + 1
  end

  def self.count
    return @@user_count
  end

  def greet
    return "Bonjour, monde !" # pry ne renvoie pas de "nil" avec un return
  end

  def say_hello_to_someone(first_name)
    puts "Hello, #{first_name} !"
  end 

  def show_itself
    print "Voici l'instance :"
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end
end
binding.pry
puts "end of file"