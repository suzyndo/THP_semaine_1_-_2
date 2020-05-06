# Convert string in ASCII number equivalence
def substitute_letter(string)
  ascii_array = []
  string.each_byte {|byte| ascii_array << byte}
  return ascii_array
end

# Sum each number equivalence with a determinate number
def shift_number(array, num)
  array.map! {|n| n + num}
  return array
end

# Convert the result in string to obtain the caesar's secret code
def conversion(array)
  secret_string_array = []
  array.each {|num| secret_string_array << num.chr}
  secret_string_array = secret_string_array.join('')
  return secret_string_array
end

def caesar_cipher(str, num)
  ascii_array = substitute_letter(str)
  ascii_array_to_convert = shift_number(ascii_array, num)
  print conversion(ascii_array_to_convert)
end

