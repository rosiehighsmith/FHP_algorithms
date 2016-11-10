class Image
  # This program looks for 1's and changes 0's around it to 1
  def initialize(array)
    @array = array
    @final_array = Marshal.load(Marshal.dump(array))
  end

  def transform(n)
    n.times do
      # make new_array so final_array doesn't become rows of all 1's
      temp_array = Marshal.load(Marshal.dump(@final_array))
      temp_array.each_with_index do |subarray, r|
        subarray.each_with_index do |value, c|
          if value == 1
            # changes surrounding indices to 1 if value is 1, within matrix limits
            @final_array[r-1][c] = 1 if r-1 >= 0
            @final_array[r][c-1] = 1 if c-1 >= 0
            @final_array[r][c+1] = 1 if c+1 <= subarray.length-1
            @final_array[r+1][c] = 1 if r+1 <= @array.length-1
          end
        end
      end
    end
    return @final_array
  end

  def output_image
    @final_array.each_index do |i|
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

image.transform(2)
image.output_image