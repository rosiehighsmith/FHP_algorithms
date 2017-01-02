# METHOD 1: if the element of the array appears more than
# one time, reject it. Since 7, 8, 4, 3, 20, and 40 only
# appear once, they are accepted as output

def method(array)
  p array.reject {|element| array.count(element) > 1 }
end

ray = [1,1,2,2,7,8,9,9,9,4,2,2,2,1,1,3,2,20,40]
method(ray)
# output [7, 8, 4, 3, 20, 40]

# METHOD 2: Da 

str = """Lorem ipsum dolor sit amet, consec[VAL1]tetur adipiscing elit. XX et sapien eu risus pretium mollis. Fusce diam lacus, ornare quis dapibus in, porttitor non risus. Curabitur eleifend libero et XX venenatis. Donec malesuada lobortis ex, eget cursus[VAL2] lectus interdum a. [VAL43]Aliquam iaculis magna nec rXXisus dapibus lobortis. Aliquam aliquam magna et fringilla tincidunt. Proin urna risus, lacinia eu quam in, venenatis aliquet magna. Mauris at ex id justo lacinia maximus id id mauris. Phasellus at dolor convallis, pellentesque leo maximus, vulputate diam. In hac habitasse platea dictumst. Nullam feugiat venenatis congue. Suspendisse vestibulum ornare pretium. Sed quis [VAL24]tortor lobortis, dignissim mi eu, consequat justo. Duis nunc ipsum, aliquet semper sem vitXXae, iaculis ultrices sem. Duis rutrum porttitor dui. Suspendisse feugiat nulla ac diam tincidunt convallis. Vestibulum qua[VAL5]m urna, mattis vel ma[VAL6]gna quis, pretium placerat leo. Fusce ullaXXmcorper[VAL7] luctXXus porttitor. Vestibulum ante ipsum primis in faucibus orci luctu[VAL18]s et ultrices posuere cubilia Curae; Pellent[VAL9]esque laoreet laXXcus nunc, eget bibendum leo efficitur nec. Sed tincidunt turpis a ex eleifend congue. Praesent blandit mi nec metus convallis tempus pulvinar eu odio. Nullam mollis tellus urna, ac dign[VAL10]issim neque dapibus nec. Donec rhoncus maximus metus, ornare rhoncus metus pharetra nec. Donec congue nisl non."""

def method(string)
  values = []
  matches = string.scan(/XX|\[VAL\d*\]/)
  count = 0
  while count < matches.length
    if matches[count].match(/XX/) && matches[count + 1].match(/\[VAL\d*\]/)
      values << matches[count + 1]
    end
    count += 1
  end
  p values
end

method(str)
# output: ["[VAL2]", "[VAL24]", "[VAL5]", "[VAL7]", "[VAL18]", "[VAL10]"]

# METHOD 3: Convert a color in hex to rgb as floats
# By taking a hex
# Convert the hexadecimal value to an integer by
# converting it to a string in base-16, splitting this
# into an array of 3 indices of 2 characters each
# then converting each element to hex then
# dividing each element by 255 and rounding to 2 dec. pts

# hex_val =         0x33BAE7
# hex_val.to_s =     3390183
# hex_val.to_s(16) =  33bae7
# hex_val.upcase =    33BAE7
# hex_val.scan(/../)= ["33", "BA", "E7"] 
#   => .hex transforms a base 16 hexadecimal from string to integer
# hex_val each x.hex= [51, 186, 231]
# hex_val/255.round(2) = [0.2,0.73,0.91]

def method(hex_value)
  hex_pairs = hex_value.to_s(16).upcase.scan(/../)
  hex_pairs.map do |x|
    (x.hex / 255.0).round(2)
  end
end

p method(0x33BAE7)
# output [0.2, 0.73, 0.91]
