
def stairs
    stairs_compteur = 0
    
  while stairs_compteur < 10
    dice = rand(1..6)
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
end

def perform # on peut ajouter directement dans la méthode "orchestre" des morceaux de codes (style intro, fin) ne nécessitant pas de méthode à part entière
puts "Bienvenue dans le jeu de l'oie nouvelle version !"
stairs
puts "BRAVO tu es arrivé(e) sur la dixième marche, champion(ne) du monde "
end
  
perform
  