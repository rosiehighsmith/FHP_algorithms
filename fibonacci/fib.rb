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
endhttps://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&ved=0ahUKEwjnnNWQkdbQAhXGz1QKHTEyB-0QFgggMAE&url=http%3A%2F%2Fstackoverflow.com%2Fquestions%2F10197254%2Fcase-statement-with-multiple-values-in-each-when-block&usg=AFQjCNEEclUDu98OEKdZbnHr_WfTUP9q4A&sig2=gtbpi0Po5lYWcasZrTsWQA&bvm=bv.139782543,d.cGw