#!/usr/bin/env ruby -w
#  Created by James Edward Gray II on November 16, 2006.
#  ppm.rb

class PPM
  class Color
    def initialize(red, green, blue)
      @red   = red
      @green = green
      @blue  = blue
    end

    BLACK = new(0, 0, 0)
    WHITE = new(255, 255, 255)
    
    def to_s(mode)
      if mode == "P6"
        [@red, @green, @blue].pack("C*")
      else
        "#{@red} #{@green} #{@blue}"
      end
    end
  end
  
  DEFAULT_OPTIONS = { :width      => 400,
                      :height     => 400,
                      :background => Color::BLACK,
                      :foreground => Color::WHITE,
                      :mode       => "P6" }
  
  def initialize(options = Hash.new)
    options = DEFAULT_OPTIONS.merge(options)
    
    @width      = options[:width]
    @height     = options[:height]
    @background = options[:background]
    @foreground = options[:foreground]
    @mode       = options[:mode]
    
    @canvas = Array.new(@width) { |x| Array.new(@height) { @background } }
  end
  
  def draw_point(x, y, color = @foreground)
    return unless x.between? 0, @width - 1
    return unless y.between? 0, @height - 1

    @canvas[y][x] = color
  end
  
  # http://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm
  def draw_line(x0, y0, x1, y1, color = @foreground)
    steep = (y1 - y0).abs > (x1 - x0).abs
    if steep
      x0, y0 = y0, x0
      x1, y1 = y1, x1
    end
    if x0 > x1
      x0, x1 = x1, x0
      y0, y1 = y1, y0
    end
    deltax = x1 - x0
    deltay = (y1 - y0).abs
    error  = 0
    ystep  = y0 < y1 ? 1 : -1
    
    y = y0
    (x0..x1).each do |x|
      if steep
        draw_point(y, x, color)
      else
        draw_point(x, y, color)
      end
      error += deltay
      if 2 * error >= deltax
        y     += ystep
        error -= deltax
      end
    end
  end
  
  def save(file)
    File.open(file.sub(/\.ppm$/i, "") + ".ppm", "w") do |image|
      image.puts @mode
      image.puts "#{@width} #{@height} 255"
      
      @canvas.reverse_each do |row|
        pixels = row.map { |pixel| pixel.to_s(@mode) }
        image.send( @mode == "P6" ? :print : :puts,
                    pixels.join(@mode == "P6" ? "" : " ") )
      end
    end
  end
end
