def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
 new_array = []
  row = 0 
  while row < src.count do
    col = 0
      element = "I love " + src[row][col].to_s + " and " + src[row][col+1].to_s + " on my pizza"
      new_array.push(element)
     row += 1
  end
  new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  new_array = []
  row = 0 
  while row < src.count do
    col = 0 
    if src[row][col] > src[row][col+1]
      new_array << src[row][col]
    else
      new_array << src[row][col+1]
    end
    row += 1
  end 
  new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  total = 0
  row = 0 
  while row < src.count do 
    col = 0 
    if src[row][col] % 2 == 0 && src[row][col+1] % 2 == 0 
      total += src[row][col] + src[row][col+1]
    end
    row += 1 
  end
  total
end
