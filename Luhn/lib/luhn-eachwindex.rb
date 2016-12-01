# luhn solution with each_with_index loop
module Luhn
  def self.is_valid?(number)
    digits = number.to_s.chars.map(&:to_i).reverse
    sum = 0
    digits.each_with_index do |n, i|
      n*=2 if i.odd?
      n = (n-9) if n > 9
      sum += n
    end
    sum % 10 == 0
  end
end

puts Luhn.is_valid?(4194560385008504)
puts Luhn.is_valid?(4194560385008505)
