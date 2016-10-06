class Image
  # this program looks around each 0 and if there's a 1
  # the 0 changes to a 1 as well. Needs a single array.
  # Uses a single ternary operator instead of if/else.
  def initialize(array)
  # Allow one argument - the Image.new
    @array = array
  end

  def transform
    @array.each_with_index do |subarray, r|
      # puts "r: " + r.to_s
      # puts subarray.inspect
      subarray.each_with_index do |value, c|
        print value == 1 || r-1 > 0 &&  @array[r-1][c] == 1 || \
        r+1 < @array.length &&  @array[r+1][c] == 1 || \
        c-1 > 0 && @array[r][c-1] == 1 || \
        c+1 < subarray.length && @array[r][c+1] == 1 ? 1:0
      end
      puts ""
    end

  end
end

image = Image.new([
  [0,0,0,0],
  [0,1,0,0],
  [0,0,0,0],
  [0,0,0,0]
])
image.transform