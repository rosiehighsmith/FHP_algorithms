def iterative_fib(n)
  raise "n must be positive" if n < 0
  old = 0
  new = 1
  # the below have to happen simultaneously
  n.times { new, old = new + old, new }
  return old
end

def recursive_fib(n)
  n < 2 ? n : recursive_fib(n-1) + recursive_fib(n-2)
end

puts iterative_fib(6)
puts recursive_fib(6)
 
# Show how long each algorithm takes to perform

require 'benchmark'
n = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(n) }
  x.report("iterative_fib")  { iterative_fib(n)  }
end