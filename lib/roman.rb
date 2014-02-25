def rom_x_to_y(num, x, y)
  roman_hash = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
  result = '' # default roman numeral is an empty string
  result = roman_hash[x] * num.modulo(y).div(x)
  # assigning a roman numeral
end

def special_case(string)
  special_cases = {'DCCCC' => 'CM', 'CCCC' => 'CD', 'LXXXX' => 'XC',
                    'XXXX' => 'XL', 'VIIII' => 'IX', 'IIII' => 'IV'}
  special_cases.each do |key, value| 
    string.gsub!(key, value)
  end
  string
end

def roman_number(num)
  borders = [[1,5],
              [5,10],
              [10,50],
              [50,100],
              [100,500],
              [500, 1000],
              [1000, 5000]]

  result = borders.map {|border| rom_x_to_y(num, border[0], border[1])}.reverse.join('')

  special_case(result)
end