module Luhn
  def self.is_valid?(number)
    digits = number.to_s.chars.map(&:to_i).reverse
    digits.map!.with_index {|x,i| i.odd? ? x * 2 : x}
    digits.map! {|x| x> 9 ? x-9: x}
    digits.reduce(0,:+) % 10 == 0
  end
end