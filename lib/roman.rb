def roman_number(num)
  roman_hash = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
  result = '' # default roman numeral is an empty string 
  roman_hash.keys.reverse.each do |key|
    result += roman_hash[key] * (num / key)
    num %= key
  end
  special_case(result)
end

def special_case(string)
  special_cases = {'DCCCC' => 'CM', 'CCCC' => 'CD', 'LXXXX' => 'XC',
                   'XXXX' => 'XL', 'VIIII' => 'IX', 'IIII' => 'IV'}
  special_cases.each do |key, value|
    string.gsub!(key, value)
  end
  string
end
