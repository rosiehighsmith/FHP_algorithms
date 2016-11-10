class Image
  def initialize(array)
  # Allow one argument - the Image.new
    @array = array
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
  [0,0,0,1],
  [0,0,0,0]
])
image.output_image