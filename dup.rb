a = [5, 3, 2]
b = a

# should see [5,3,2]
puts b.inspect

a[0] = 7

# should see [7,3,2]
puts b.inspect

# reset
a = [5,3,2]
b = a.dup
a[0] = 7

# should see [5,3,2]
puts b.inspect