def roman_dict(num)
 {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}[num]
end

def get_digits(num) 
# getting an array of individual digits in reverse order for any number with up to 4 digits
# more wouldn't work for Roman numerals anyway
  [num.modulo(1000).modulo(100).modulo(10),
    num.modulo(1000).modulo(100).div(10),
    num.modulo(1000).div(100),
    num.div(1000)]
end

def rom_x_to_y(num, x, y, k)
  result = ''
  result = roman_dict(x) * num.modulo(y).div(x) unless num.modulo(y) >= k
  result
end

def special_case(num, result)
  special_cases = [{4 => 'IV', 9 => 'IX'},
                    {4 => 'XL', 9 => 'XC'},
                  {4 => 'CD', 9 => 'CM'},
                  {}]
  get_digits(num).each_with_index do |digit, ind| 
    result[ind] = special_cases[ind][digit] if special_cases[ind].keys.include?(digit)
  end
  result
end

def roman_number(num)
  rom_1_to_5 = rom_x_to_y(num, 1, 5, 4) # when last digit is zero to 3
  rom_5_to_10 = rom_x_to_y(num, 5, 10, 9)
  rom_10_to_50 = rom_x_to_y(num, 10, 50, 40)
  rom_50_to_100 = rom_x_to_y(num, 50, 100, 90)
  rom_100_to_500 = rom_x_to_y(num, 100, 500, 400)
  rom_500_to_1000 = rom_x_to_y(num, 500, 1000, 900)
  rom_1000_onwards = rom_x_to_y(num, 1000, 5000, 4000)
  
  result = [rom_1_to_5, rom_5_to_10, rom_10_to_50, rom_50_to_100, rom_100_to_500, rom_500_to_1000, rom_1000_onwards]

  result = special_case(num, result)
  
  result.reverse.join('')
end

