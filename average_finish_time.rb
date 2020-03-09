
def stairs
    
    parties_compteur = 0 # compteur pour le nb de lancés de dé nécessaire pour finir la partie
    stairs_compteur = 0 # compteur pour les marches parcourues
    
   
  while stairs_compteur < 10
    dice = rand(1..6)
    parties_compteur += 1
    puts "Les dès sont jetés ! Le résultat obtenu est #{dice}" 
    
     if dice == 5 || dice == 6
      stairs_compteur +=1
      puts "Bravo, tu as avancé d'une marche ! Tu es à présent sur la #{stairs_compteur} ème marche "
  
     elsif dice == 1
      if stairs_compteur > 1
        stairs_compteur -=1
      else
        stairs_compteur == 0
      end
      puts "Mince, tu recules d'une marche...Tu es revenue sur la #{stairs_compteur} ème marche"
  
     else 
      puts "Rien de nouveau ne se passe. Tu restes sur la #{stairs_compteur} ème marche "
    end
  end
  $parties_array << parties_compteur # on ajoute le nb de tour nécessaire à un tableau crée une seul fois grâce à la méthode array
  ending
end

def ending
  puts "BRAVO tu es arrivé(e) sur la dixième marche, champion du monde "
end

def play # pour jouer autant de parties que désirées
    100.times do 
        stairs
    end
end

# moyenne du nb de lancés de dé nécessaire pour finir 100 parties
def array
$parties_array = [] # on le rend global pour pouvoir l'utiliser dans d'autres méthodes
end

def average
    average = 0
    $parties_array.each {|party| average = average + party}
    final_average = average / $parties_array.size # en l'occurence ici 100'
    puts "Sur une simulation de 100 parties la moyenne du nombre de lancés de dé nécessaire pour arriver au 10e étage est de #{final_average} lancés "
end

def perform
    array # création unique d'un tableau plutôt que répété x nombre de fois dans stairs
    play
    average
    

end

perform
