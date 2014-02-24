def roman_dict(num)
 {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}[num]
end

def roman_number(num)
  rem_5 = num % 5 # remainder from division by 5
  rem_10 = num % 10 # remainder from division by 10
  rem_50 = num % 50
  rem_100 = num % 100
  rem_500 = num % 500
  rem_1000 = num % 1000

  div_1000 = num / 1000
  div_500 = rem_1000 / 500
  div_100 = rem_500 / 100
  div_50 = rem_100 / 50 # divider from division by 50
  div_10 = rem_50 / 10 # divider from division by 10 after divided by 50
  div_5 = rem_10 / 5 # divider from division by 10

  rom_1_to_5 = ''
  rom_10_to_50 = ''
  rom_50_to_100 = ''
  rom_100_to_500 = ''
  rom_500_to_1000 = ''
  
  rom_1_to_5 = 'IV' if rem_10 == 4 # Special case for when the last digit is 4
  rom_5_to_10 = 'IX' if  rem_10 == 9 # Special case for when the last digit is 9
  rom_10_to_50 = 'XL' if rem_100 >= 40 && rem_100 < 50
  rom_50_to_100 = 'XC' if  rem_100 >= 90
  rom_100_to_500 = 'CD' if  rem_1000 >= 400 && rem_1000 < 500
  rom_500_to_1000 = 'CM' if  rem_1000 >= 900

  rom_1_to_5 = roman_dict(1) * rem_5 unless rem_5 == 4 # when last digit is zero to 3
  rom_5_to_10 = roman_dict(5) * div_5 unless rem_10 == 9
  rom_10_to_50 = roman_dict(10) * div_10 unless rem_50 >= 40
  rom_50_to_100 = roman_dict(50) * div_50 unless rem_100 >= 90
  rom_100_to_500 = roman_dict(100) * div_100 unless rem_500 >= 400
  rom_500_to_1000 = roman_dict(500) * div_500 unless rem_1000 >= 900
  rom_1000_onwards = roman_dict(1000) * div_1000

  rom = rom_1000_onwards + rom_500_to_1000 + rom_100_to_500 + rom_50_to_100 + rom_10_to_50 + rom_5_to_10 + rom_1_to_5

  rom
end
  

# puts roman_number(44)
# puts roman_number(7)
# puts roman_number(17)
# puts roman_number(27)