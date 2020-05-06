def buying_day(array)
  index_array = []
  result_array = []
  array.each_with_index do |num, index|
    index < array.size / 2 ? index_array << num : nil
  end
  result_array << index_array.index(index_array.min)
  return result_array
end

def selling_day(array, result_array)
  index_array = []
  array.each_with_index do |num, index|
    index > result_array.join.to_i ? index_array << num : nil
  end
  max = index_array.index(index_array.max)
  result_array << max + (result_array.join.to_i + 1)
  return result_array
end

def day_trader(array)
  result_array = buying_day(array) 
  selling_day(array, result_array)
  benef_array = []
    array.each do |num|
      if 
        result_array[0] == array.index(num)
        benef_array << num
      elsif
        result_array[1] == array.index(num)
        benef_array << num
      end
    end
  puts "Ok, d'après mes savants calculs, achetons des dividendes le #{result_array[0]} jour et vendons les le #{result_array[1]} jour pour faire un sympathique bénéf :"
  puts "En effet en déduisant #{benef_array[0]} à #{benef_array[1]} on obtient $#{benef_array[1]-benef_array[0]} de bénéfices !"
end
