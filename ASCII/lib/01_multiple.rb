def multiple(num)
multiple_array = []
for num in (1...num)
  if num % 3 == 0 || num % 5 == 0
    multiple_array << num
  end
end
  return multiple_array.sum
end