class Image
  # This program looks around each 0 and if there's a 1
  # the 0 changes to a 1 as well. Needs single array.
  def initialize(array)
    @array = array
  end

  def transform
    # In the array, each row is a subarray with the index r
    # Length of the array = num of rows/subarrays
    @array.each_with_index do |subarray, r|
      # In each subarray/row there is a value (0 or 1) with the index c
      # Length of subarray = # of columns
      subarray.each_with_index do |value, c|
        # if the value above = 1 and I'm not in the 1st row
        if r-1 >= 0 &&  @array[r-1][c] == 1
          print 1
        # if the value below = 1 and I'm not in the last row
        elsif r+1 < @array.length &&  @array[r+1][c] == 1
          print 1
        # if the value to my left = 1 and I'm not in 1st column
        elsif c-1 >= 0 && @array[r][c-1] == 1
          print 1
        # if the value to my right = 1 and I'm not in the last column
        elsif c+1 < subarray.length && @array[r][c+1] == 1
          print 1
        # if I am already 1, stay 1
        elsif value == 1
          print 1
        else
          print 0
        end          
      end
      # Separate each printed row
      puts ""
    end
  end
end

image = Image.new([
  [0,0,0,0],
  [1,0,0,0],
  [0,0,0,0],
  [0,0,0,0]
])
image.transform