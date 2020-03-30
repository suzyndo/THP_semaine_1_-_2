def fake_bin(str)
  str.gsub!(/[0-4]/, '0').gsub!(/[5-9]/, '1')
  return str
=begin
  digit = str.chars
  digit.map! do |num|
   if num <= 4.to_s 
    digit[digit.index(num)] = '0'
   elsif num >= 5.to_s
    digit[digit.index(num)] = '1'
   end
  end
  digit = digit.join(' ')
  print digit
=end
end
fake_bin('509321967506747') # '101000111101101'); 

def reverse_seq(n)
  a = []
  compteur = n
 for n in (1..n)
  a << compteur 
  compteur = compteur -= 1 
 end
 return a
end

def monkey_count(n)
 a = []
 for n in (1..n)
  a << n
 end
 return a
end

def invert(array)
  array.map! {|n| n = -n}
  print array
end


def remove_first_and_last_character(str)
 print	str.chop.reverse .chop.reverse
	
end

def return_negative(n)
	if n > 0
		n = -n
	end
	print n
end

def repeat_string(count, str)
	count.times {puts str}
end

def repeat_str (n, s)
	print (s) * n
 end

 def remove_string_spaces(str)
	str.gsub!(/[" "]/, "")
 end
 
 def find_the_smallest_integer_in_the_array(ary)
   print ary.min
 end

 def summation(n)
  print n * (n + 1) / 2
  print (1..n).sum
 end

 def convert_number_in_a_reversed_array_of_digits(n)
  n.to_s.chars.reverse.map(&:to_i)
 end
 convert_number_in_a_reversed_array_of_digits([45, 78, 8, 9, 19])

 def is_divisible(x,y,z)
  if x % y == 0 && x % z == 0
    return true
  else
    return false
  end
 end
 
 def count_positives_sum_negatives(array)
  compteur_positives_num = 0
  compteur_negatives_num = 0
  result_array = []
  # on va itérer sur chaque élèments de l'array
  array.each do |num|
    if num > 0 
      compteur_positives_num +=1
    elsif num < 0
      compteur_negatives_num = compteur_negatives_num + num
    end
  end

  unless array.empty?
    result_array << compteur_positives_num
    result_array << compteur_negatives_num
  end
  return result_array
 end 
 
 def find_needle(array)
  puts "found the needle at position #{array.index("needle")}"
 end
 
 def litres(time)
  puts (time * 0.5).floor # explication de floor ? arrondi au nb inférieur
 end
 
 def square_sum(num_array)
  sum_array = []
  num_array.each do |num|
    sum_array << num**2  
  end
  print sum_array.sum
 end

 def maps(array)
  array.map! {|num| num * 2}
  return array
 end

 def sum_array(array)
  return 0 if arr.nil? || arr.length < 3  # on privilegiera l'élégance du arr.nil? au arr == nil 
  array.sort!
  array.shift     # contourner le n elements qui supprime les mêmes éléments mêmes triés et empêche :
  array.pop       # l'utilisation de first/last => delete(array.first)
  print array.sum # l'utilisation de [0]/[-1] => delete(arrray[0])
 end
 
 def abbrev_name(name)
  return name.split.map {|letter| letter[0]}.join('.').upcase
 end
 abbrev_name("Patrick Feenan")

 def inj
  #(5..10).inject { |product, n| product * n }
  #print (5..10).reduce(:*)  
  longest = %w{ cat sheep bear }.inject do |memo, word|
    memo.length > word.length ? memo : word
  end
 end

 def reverse_upcase_noLTA(str)
  print str.reverse.upcase.gsub(/[LTA]/, "")
end

def who_is_bigger(a,b,c)
  if a.nil? || b.nil? || c.nil?
      return "nil detected"
  else 
    if a > b && a > c
      return "a is bigger"
    elsif b > a && b > c
      return "b is bigger"
    else 
      return "c is bigger"
    end
  end  
end

def magic_array(array)
   array.flatten!.sort!.map! {|num| num * 2}.delete_if {|num| (num % 3) == 0}.sort!.uniq!
end

def repeat(str, num=2)
  #s = " "
  #num.times {print "#{str}#{s}"}
  return ((str + " ") * num).rstrip
end

def start_of_word(str, num)
  print str.chars.first(num).join("")
end

def titleize(word)
 
  w = word.split 

  w.each do |wd| 
    if w.index(wd) == 0  
      w[w.index(wd)] = wd.capitalize
    elsif wd.length <= 3
      w[w.index(wd)] = wd.downcase
    else 
      w[w.index(wd)] = wd.capitalize
    end
  end
  w = w.join(' ')
  return w
end




 

 