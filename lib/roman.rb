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
  borders = [[1,5,4],
              [5,10,9],
              [10,50,40],
              [50,100,90],
              [100,500,400],
              [500, 1000, 900],
              [1000, 5000, 4000]]

  result = borders.map {|border| rom_x_to_y(num, border[0], border[1], border[2])}

  result = special_case(num, result)
  
  result.reverse.join('')
end

