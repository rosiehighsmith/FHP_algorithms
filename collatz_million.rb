# Find the input n that produces the longest chain 
# of collatz values from n = 1 to 1,000,000. 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

n = 4
array = []
array << n

for n in 1..10 do
  collatz(n)
end

def collatz(n)
  while n > 1
    if n.even?
      n = n/2
    else
      n = 3*n +1
    end
    array << n
  end
  puts array.length
end

