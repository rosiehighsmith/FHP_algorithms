class Image
  # This program looks for 1's and changes 0's around it to 1
  # It requires multiple arrays.
  def initialize(array)
    @array = array
    # create a final array so the original array 
    # doesn't get changed and become all 1's
    @final_array = copy_array(array)
  end
  # create a copy of array so final_array initializes the same as array
  # because setting final_array = array on line 6 causes the array to 
  # change along with final_array
  def copy_array(array)
    new_array = []
    array.each do |row|
      new_row = []
      row.each do |value|
        new_row << value
      end
      new_array << new_row
    end
    new_array
  end

  def transform(n)
    # look at each row(subarray) in the array where r = row index
    i = 1
    while i <= n do
      new_array = copy_array(@final_array)
      new_array.each_with_index do |subarray, r|
        # puts "r: " + r.to_s
        # puts subarray.inspect
        # in each row(subarray) look at each value per c = col index
        subarray.each_with_index do |value, c|
          if value == 1
            # set value above to a 1 if it's not above array bounds
            @final_array[r-1][c] = 1 if r-1 >= 0
            # set value to the left to 1 if it's not left of array bounds
            @final_array[r][c-1] = 1 if c-1 >= 0
            # set value to the right to 1 if in a spot less than length of row
            @final_array[r][c+1] = 1 if c+1 <= subarray.length-1
            # set value below to 1 if not in a spot outside length of # of rows
            @final_array[r+1][c] = 1 if r+1 <= @array.length-1
            # puts "c: " + c.to_s + ", value: " + value.to_s
          end
        end
      end
      i += 1
    end
    return @final_array
  end

  def output_image
    # Loop over array rows
    @final_array.each_index do |i|

        # Join each array row
        joined = @final_array[i].join
        puts joined
    end
  end
end

image = Image.new([
  [0,0,0,0,0],
  [0,0,0,0,0],
  [0,0,0,0,0],
  [0,0,0,0,0],
  [1,0,0,0,0]
])

image.transform(1)
image.output_image