def ask_first_name
    puts "Bonjour quel est ton prénom ?"
    print "> "
    first_name = gets.chomp
end

def say_hello(first_name)
    puts "Bonjour, #{first_name}"
end

#first_name = ask_first_name
#say_hello(first_name)

def full_pyramid # inspi de ma pyramide pour la première version + inspi de celle de Juliette pour une deuxième version
    
      compteur = 0
      compteur_bis = -1
      dièse = "#"
    
        puts "Combien d'étages veux-tu pour ta pyramide (1 à 25 étages) ?"
        print "> "
        number = gets.chomp.to_i  # le nombre d'étage souhaité
    
        until number >= 1 && number <= 25
            puts "Veuillez entrer un nombre entre 1 à 25 étages"
            print "> "
            number = gets.chomp.to_i
        end
    
       number.times {puts ((" " * number -=1) + (dièse * compteur +=1) + (dièse * compteur_bis +=1)) } # on garde le programme précédent auquel on ajoute un complèment de dièse acrémenté de 1.
    
end

def full_pyramid_bis

puts "Choisissez un nombre entre 1 et 25 :"
nombreetage = gets.chomp.to_i
compteur = -1

if nombreetage >= 1 && nombreetage <= 25
  puts "Voici la pyramide :"

 for n in (1..nombreetage) # on crée dans cette boucle for une variable n qui prendra successivement la valeur n de 1 au nombre d'étages. Exemple si 5; n sera successivement 1, 2, 3, 4, 5

    for j in (1..nombreetage - n) #nombre d'étages moins nombre de ligne
      print " "
    end

    for i in (1..n + compteur += 1)
      print "#"
    end

   puts "" #permet d'aller à la ligne
 end

end
end

def wtf_pyramid

    compteur = 0
    compteur_bis = -1
    dièse = "#"
    

    # How many stairs do you want ?

      puts (dièse * 120)
      puts " "
      puts "Combien d'étages veux-tu pour ta pyramide (1 à 25 étages) ? SPOILER ALERT les nombres pairs sont interdits"
      puts " "
      puts (dièse * 120)
      puts " "
      print "> "
      number = gets.chomp.to_i  # le nombre d'étage souhaité
      fix_number = number # variable créee pour stocker le nombre fixe d'étages demandés sans incrémentation des compteurs.
  
      until number >= 1 && number <= 25 && !(number%2 == 0)
          puts "Veuillez entrer un nombre impair entre 1 à 25 étages"
          print "> "
          number = gets.chomp.to_i
      end

       # Construction of the pyramid
  
     number.times do 

        puts (" " * number -=1) + (dièse * compteur +=1) + (dièse * compteur_bis +=1)

         # on crée une variable plus simple d'utilisation avec le nombre de "#" affiché :
        dièse_length = ((dièse * compteur) + (dièse * compteur_bis)).length
         
         if dièse_length == fix_number # quand le nb de # est équivalent au nombre d'étage on a le centre de la pyramide losange
           until dièse_length == 1
           puts (" " * number +=1) + (dièse * compteur -=1) + (dièse * compteur_bis -=1) # même manoeuvre mais en marche arrière
           end
         end 
    end
      
     
end

