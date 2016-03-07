require 'rubygems'
require 'rmagick'

Dir.glob("*.jpg") do |fname|
   img = Magick::Image.read(fname)[0]
   filename = File.basename(fname,File.extname(fname))
   puts filename
   img.thumbnail(0.30).write("#{filename}-thumb.jpg")
end
