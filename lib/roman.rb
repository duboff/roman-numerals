def roman_number(num)
  roman_hash = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  result = '' # default roman numeral is an empty string
  roman_hash.keys.reverse.each do |key|
    result += roman_hash[key] * (num / key)
    num %= key
  end
  result
end
