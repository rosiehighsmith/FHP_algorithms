class Image
  def initialize(array)
  # Allow one argument - the Image.new
    @array = array
  end

  def transform
    @array.each_with_index do |subarray, r|
      # puts "r: " + r.to_s
      # puts subarray.inspect
      subarray.each_with_index do |value, c|
        ((value == 1)||(r-1 > 0 &&  @array[r-1][c] == 1) ||(r+1 < @array.length &&  @array[r+1][c] == 1) || (c-1 > 0 && @array[r][c-1] == 1 )|| (c+1 < subarray.length && @array[r][c+1] == 1)) ? print 1 : print 0
                 
      end
      puts ""
    end

  end
end

image = Image.new([
  [0,0,0,0],
  [0,1,0,0],
  [0,0,0,1],
  [0,0,0,0]
])
image.transform