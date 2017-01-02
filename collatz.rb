# Find the input n that produces the longest chain 
# of collatz values from 1 to 1,000,000. 
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

print "The longest collatz chain 1 - 1 million is " + array.length.to_s + " digits."

