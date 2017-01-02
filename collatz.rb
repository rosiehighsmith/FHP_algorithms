# print the collatz sequence based on user input, n
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

puts "Enter a positive number."
n = gets.chomp.to_i
array = []
array << n

while n != 1
  if n.even?
    n = n/2
  else
    n = 3*n +1
  end
  array << n
end

print "Length of this array is " + array.length.to_s + " digits.\n"

