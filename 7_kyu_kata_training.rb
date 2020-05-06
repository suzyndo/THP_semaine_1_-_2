def DNA_strand(dna)
  dna.tr("ACTG", "TGAC")
end

def XO(str)
  o_array = []
  x_array = []
  str.downcase.chars.each do |letter|
    letter.match?("o") ? o_array << letter : nil
    letter.match?("x") ? x_array << letter : nil
  end
  print o_array.size == x_array.size ? true : false
end

def is_square(x) # find a square number
  x < 0 ? false : Math.sqrt(x) % 1 == 0
end

def disemvowel(str)
  print str.gsub(/[AaEeIiOoUu]/, "")
end

def find_short(s)
  s = s.split.sort_by{|w| w.length}
  return s.first.size
end

def descending_order(n)
   n.to_s.chars.sort.reverse.join.to_i
end

def square_digits num
  return num.to_s.chars.map{|n| n.to_i ** 2}.join.to_i
end

def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

def high_and_low(numbers)
  numbers = numbers.split.map {|num| num.to_i}
  result_array = []
  result_array << numbers.max
  result_array << numbers.min
  return result_array.join(' ')
end

def get_middle(s)
  size = s.size
  index = s.size / 2 
  return size.even? ? s[index -1] + s[index]  : s[index]
end

def accum(s)
   s.chars.each_with_index.map {|c, i| c.upcase + (c.downcase * i)}.join('-')
end
