module Luhn
  def self.is_valid?(number)
    # breaks number into individual digits
    digits = number.to_s.chars.map(&:to_i).reverse
    sum, i = 0, 0
    digits.each do |n|
      n*=2 if i.odd?
      n = (n-9) if n > 9
      sum += n
      i += 1
    end
    sum % 10 == 0
  end
end

