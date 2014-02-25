def roman_dict(num)
 {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}[num]
end

def remainder(num, k)
  num % k
end

def div(num, rem, div)
  remainder(num, rem) / div
end

def rom_x_to_y(num, x, y, k)
  result = ''
  result = roman_dict(x) * div(num, y, x) unless remainder(num, y) >= k
  result
end

def roman_number(num)

  # rom_1_to_5 = ''
  # rom_10_to_50 = ''
  # rom_50_to_100 = ''
  # rom_100_to_500 = ''
  # rom_500_to_1000 = ''
  
  rom_1_to_5 = rom_x_to_y(num, 1, 5, 4) # when last digit is zero to 3
  rom_5_to_10 = rom_x_to_y(num, 5, 10, 9)
  # roman_dict(5) * div(num, 10, 5) unless remainder(num, 10) == 9
  rom_10_to_50 = rom_x_to_y(num, 10, 50, 40)
  # roman_dict(10) * div(num, 50, 10) unless remainder(num, 50) >= 40
  rom_50_to_100 = rom_x_to_y(num, 50, 100, 90)
  # roman_dict(50) * div(num, 100, 50) unless remainder(num, 100) >= 90
  rom_100_to_500 = rom_x_to_y(num, 100, 500, 400)
  # roman_dict(100) * div(num, 500, 100) unless remainder(num, 500) >= 400
  rom_500_to_1000 = rom_x_to_y(num, 500, 1000, 900)
  # roman_dict(500) * div(num, 1000, 500) unless remainder(num, 1000) >= 900
  rom_1000_onwards = rom_x_to_y(num, 1000, 5000, 4000)
  # roman_dict(1000) * div(num, num+1, 1000)
  
  rom_1_to_5 = 'IV' if remainder(num, 10) == 4 # Special case for when the last digit is 4
  rom_5_to_10 = 'IX' if  remainder(num, 10) == 9 # Special case for when the last digit is 9
  rom_10_to_50 = 'XL' if remainder(num, 100) >= 40 && remainder(num, 100) < 50
  rom_50_to_100 = 'XC' if  remainder(num, 100) >= 90
  rom_100_to_500 = 'CD' if  remainder(num, 1000) >= 400 && remainder(num, 1000) < 500
  rom_500_to_1000 = 'CM' if  remainder(num, 1000) >= 900
  
  rom_1000_onwards + rom_500_to_1000 + rom_100_to_500 + rom_50_to_100 + 
        rom_10_to_50 + rom_5_to_10 + rom_1_to_5
end
puts roman_number(1999)
