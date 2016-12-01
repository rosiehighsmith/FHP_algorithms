def iterative_fib(n)
  raise "fib not defined for negative numbers" if n < 0
  old = 0
  new = 1
  n.times {new, old = new + old, new}
  return old
end

def recursive_fib(n)
  return  n  if ( 0..1 ).include? n
  (recursive_fib(n - 1) + recursive_fib(n - 2))
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