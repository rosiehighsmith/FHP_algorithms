module Luhn
  def self.is_valid?(number)
    # breaks number into individual digits
    digits = number.to_s.chars.map(&:to_i)
    blam = digits.reverse
    sum = 0
    i = 0
    blam.each do |n|
      n*=2 if i.odd?
      n = (n-9) if n >= 10
      sum += n
      i += 1
    end
    sum % 10 == 0
  end
end

