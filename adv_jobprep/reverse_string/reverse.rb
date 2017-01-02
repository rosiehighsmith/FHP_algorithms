# Reverse a string without the .reverse method

string = "hello"
backward = []
array = string.chars

array.each do
  backward.push(array.pop())
end

puts backward.join()