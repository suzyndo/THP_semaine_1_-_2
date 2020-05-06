
def word_counter(string, array)
hash = Hash.new(0)
  array.each do |str| 
    string.split.select {|word| word.downcase.match?(str) ? hash[str] += 1 : nil}
  end
print hash
end

# code de Lucas https://github.com/luca-montaigut qui m'aura permis de débugger mon code
=begin
def word_counter(string, array)
  hash = Hash[array.zip(Array.new(array.size, 0))] # on crée un hash avec deux array
  hash.each_key do |key|
    hash[key] = string.split.select { |w| w.downcase.match?(key) }.length 
  end
  return hash.select { |_, v| v > 0 }
end
=end

#dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
#dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
#word_counter("Howdy partner, sit down! How's it going?", dictionnary)
#word_counter(File.read('../lib/shakespeare.txt'), dictionnary) # ça fait chauffer la bête
#word_counter(File.read('../lib/shakespeare.txt'), File.read('swearWords.txt').split)
                       #corpus de  string          nouveau dico avec les occurences recherchées