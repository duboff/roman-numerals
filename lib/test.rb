# def get_quotient(num, divider, string)
#   string * (num / divider)
# end

# def roman_convert(x)
#   get_quotient(x, 1000, "M") + get_quotient(x, 500, "D")
# end
dict = {'VIIII' => 'IX', 'IIII' => 'IV'}
string = 'LXIIII'

dict.each do |key, value| 
  string.gsub!(key, value)
end

puts string