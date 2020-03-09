def sign_up
  puts "Bonjour veuillez créér un nouveau mot de passe"
  print "> "
  $password = gets.chomp
end

def login
  puts "Veuillez vous enregistrez en entrant votre mot de passe"
  print "> "
  password_entry = gets.chomp
    until password_entry == $password
      puts "LOGIN ERROR. Veuillez vous enregistrez en entrant votre mot de passe"
      print "> "
      password_entry = gets.chomp
    end
     welcome_screen
end

def welcome_screen
  puts "Bienvenue dans la zone secrète, voici un secret de la plus grande importance :"
  puts ("#" * 20)
  puts "LILOU AIME AARON"
  puts ("#" * 20)    
end

def perform
  sign_up
  login
end

perform