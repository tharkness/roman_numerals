@increments = {
  "M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, 
  "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1
}

def roman_numerals(integer)
  @increments.map do |letter,value|
    amount, integer = integer.divmod(value)
    letter * amount
  end.join
end

x = roman_numerals(3949)
puts x.inspect
puts x
