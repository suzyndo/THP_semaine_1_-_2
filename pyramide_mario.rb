def pyramide

    compteur = 0
    dièse = "#"

    puts "Combien d'étages veux-tu pour ta pyramide (1 à 25 étages) ?"
    print "> "
    number = gets.chomp.to_i  # le nombre d'étage souhaité

    until number >= 1 && number <= 25
        puts "Veuillez entrer un nombre entre 1 à 25 étages"
        print "> "
        number = gets.chomp.to_i
    end

   number.times {puts (dièse * compteur +=1) + "\n " }
end

def pyramide_reverse

  compteur = 0
  dièse = "#"

    puts "Combien d'étages veux-tu pour ta pyramide (1 à 25 étages) ?"
    print "> "
    number = gets.chomp.to_i  # le nombre d'étage souhaité

    until number >= 1 && number <= 25
        puts "Veuillez entrer un nombre entre 1 à 25 étages"
        print "> "
        number = gets.chomp.to_i
    end

   number.times {puts ((" " * number -=1) + dièse * compteur +=1) + "\n " } # on garde le programme précédent auquel on ajoute des espaces équivalent au nb d'étages voulu (number) soustrait par 1 pour obtenir la pyramide en renverse
end

def pyramide_while

  compteur = 0
  dièse = "#"

    puts "Combien d'étages veux-tu pour ta pyramide (1 à 25 étages) ?"
    print "> "
    number = gets.chomp.to_i  # le nombre d'étage souhaité

    until number >= 1 && number <= 25
        puts "Veuillez entrer un nombre entre 1 à 25 étages"
        print "> "
        number = gets.chomp.to_i
    end
    
    while number > compteur
    puts (dièse * compteur +=1) + "\n " 
    end

end

def pyramide_while_bis

  compteur = 0
  dièse = "#"

    puts "Combien d'étages veux-tu pour ta pyramide (1 à 25 étages) ?"
    print "> "
    number = gets.chomp.to_i  # le nombre d'étage souhaité

    until number >= 1 && number <= 25
        puts "Veuillez entrer un nombre entre 1 à 25 étages"
        print "> "
        number = gets.chomp.to_i
    end
    
    while number > compteur
    puts ((" " * number -=1) + dièse * compteur +=1) + "\n " 
    end

end
pyramide_while_bis