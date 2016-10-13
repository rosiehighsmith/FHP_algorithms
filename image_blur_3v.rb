class Image
  # This program looks around each 0 and if there's a 1
  # the 0 changes to a 1 as well. Needs a single array.
  # Uses a single ternary operator instead of if/else.
  def initialize(array)
    @array = array
  end

  def transform(n)
    i = 1
    while i <= n do
      @array.each_with_index do |subarray, r|
        subarray.each_with_index do |value, c|
          puts value == 1 || r-1 > 0 &&  @array[r-1][c] == 1 || \
          r+1 < @array.length &&  @array[r+1][c] == 1 || \
          c-1 > 0 && @array[r][c-1] == 1 || \
          c+1 < subarray.length && @array[r][c+1] == 1 ? 1:0
        end
      end
      i += 1
    end
    return @array
  end

  def output_image
    # Loop over array rows
    @array.each_index do |i|

        # Join each array row
        joined = @array[i].join
        puts joined
    end
  end

end

image = Image.new([
  [0,0,0,0],
  [0,1,0,0],
  [0,0,0,0],
  [0,0,0,0]
])
image.transform(2)
image.output_image