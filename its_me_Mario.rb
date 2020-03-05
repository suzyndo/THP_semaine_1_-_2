def greetings
    puts "Bonjour monde !"
end

def sexy_greetings
    puts "Bonjour, monde ! \n Et avec une voix sexy ça donne : Bonjour, monde !"
end

def operations

puts "On va compter le nombre d'heures de travail à THP"
puts "Travail : #{10 * 5 * 11}"
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

puts "Et en secondes ?"

puts 10 * 5 * 11 * 60 * 60

puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

puts 3 + 2 < 5 - 7

puts "Ça fait combien 3 + 2 ? #{3 + 2}"
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

puts "Ok, c'est faux alors !"

puts "C'est drôle ça, faisons-en plus :"

puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"

end

def variables

number_of_hours_worked_per_day = 10
number_of_days_worked_per_week = 5
number_of_weeks_in_THP = 11

puts "Travail : #{number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"

puts "Et en minutes ça fait : #{60 * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"
puts "Et en secondes ça fait : #{3600 * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"
end

def hello
    puts "Bonjour veuillez entrer un prénom : "
    print "> "
    user_name = gets.chomp
    puts "Bonjour #{user_name} !"
end


def hello_surname
    puts "Bonjour veuillez entrer un prénom : "
    print "> "
    user_name = gets.chomp
    puts "Veuillez entrer un nom de famille : "
    print "> "
    family_name = gets.chomp
    puts "Bonjour #{user_name} #{family_name}!"
end


def age
    puts "Bonjour veuillez entrer votre année de naissance : "
    print "> "
    birth_date = gets.chomp.to_i
    puts "En 2017 vous étiez agé(e) de #{2017-birth_date}"
end

def ça_farte
    puts "Entrez un nombre"
    print "> "
    number = gets.chomp.to_i
    number.times {puts "Salut, ça farte ?"}
end

def count_number
    compteur = 0
    puts "Entrez n'importe quel nombre"
    print "> "
    number = gets.chomp.to_i
    until compteur == number
      puts  compteur += 1
    end
end

def count_age
    compteur = 2020
    puts "Entrez votre date de naissance"
    print "> "
    birth_date = gets.chomp.to_i
    until compteur == birth_date
      puts  birth_date += 1
    end
end  

def rebours
    compteur = 0
    puts "Entrez n'importe quel nombre"
    print "> "
    number = gets.chomp.to_i
    until compteur == number
      puts  number -= 1
    end
end

def count_age_per_year
    compteur = 2020
    year = 0
    puts "Entrez votre date de naissance"
    print "> "
    birth_date = gets.chomp.to_i
    until compteur == birth_date
      puts  "En #{birth_date += 1} tu avais #{year += 1} ans"
    end
end  

def count_age_per_year_bis
    compteur = 2020
    year = 0
    puts "Entrez votre date de naissance"
    print "> "
    birth_date = gets.chomp.to_i
    until compteur == birth_date
      puts  "Il y a #{compteur - birth_date += 1} ans tu avais #{year += 1} ans"
    end
end  

def count_age_per_year_bis_half
    compteur = 2020
    year = 0
    puts "Entrez votre date de naissance"
    print "> "
    birth_date = gets.chomp.to_i
    until compteur == birth_date
      puts  "Il y a #{compteur - birth_date += 1} ans tu avais #{year += 1} ans"
      new_birth_date = compteur - birth_date # année de naissance à l'instant T après ajout d'une année

        if new_birth_date == year 
         puts "Il y a #{year} ans tu avais la moitié de l'âge que tu as aujourd'hui " 
        end    
    end
end  

def email_list

    str = "jean.dupont.01@email.fr"
    number = 1
    email_array = []

    50.times do 
    
      if
        number > 10
        email_array.push(str.gsub(/[01]/, '0' => "", '1' => number.to_s))
      else
        email_array.push(str.gsub(/[1]/, number.to_s))
      end
    number += 1

    end
    
    print email_array
    
end

def email_list_even

  str = "jean.dupont.01@email.fr"
  number = 1
  email_array = []

  50.times do 
  
    if
      number % 2 == 0 #number > 10 
      email_array.push(str.gsub(/[01]/, '0' => "", '1' => number.to_s))
    end
  number += 1

  end
  print email_array
end

email_list_even

