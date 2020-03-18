def count_journalist(journalist)
  puts "There are #{journalist.length} journalists in this list"
  puts
end

def number_handle(journalist)
  puts "There are #{journalist.select{ |n| /[0-9]/.match(n)}.length} handles which contains numbers in the list"
  puts
end

def aude_handle(journalist)
  puts "There are #{journalist.select{ |a| /[Aa]ude/.match(a)}.length} handles which contains the word \"Aude\" in it"
  puts
end

def uppercase_handle(journalist)
  puts "There are #{journalist.select{ |u| /@[A-Z]/.match(u)}.length} handles which start with uppercase letter"
  puts
end


def at_least_one_uppercase_handle(journalist)
  puts "There are #{journalist.select{ |u| /[A-Z]/.match(u)}.length} handles which contains at least one uppercase letter"
  puts
end

def underscore_number(journalist)
  puts "There are #{journalist.count{ |underscore| /_/.match(underscore)}} underscore in the list"
  puts
end

def sortby(journalist)
  puts "Voici les 10 premiers handles triés par ordre alphabétique : #{journalist.sort_by{ |sort|(sort)}[0...10]}"
  puts
end

def sortbylenght(journalist)
  puts "Voici les 50 premiers handles triés par taille #{journalist.sort_by{ |handle|(handle).length}[0...50]}"
  puts
end

def epenser(journalist)
  puts "L'index de epenser est #{journalist.index{ |handle| /epenser/.match(handle)}}"
end

def perform(journalist)
  count_journalist(journalist)
  number_handle(journalist)
  aude_handle(journalist)
  uppercase_handle(journalist)
  at_least_one_uppercase_handle(journalist)
  underscore_number(journalist)
  sortby(journalist)
  sortbylenght(journalist)
  epenser(journalist)
end

perform(journalist)