#!/usr/bin/env ruby -w
#  Created by James Edward Gray II on November 15, 2006.
#  turtle_ppm_writer.rb

ROOT_DIR   =  File.dirname(__FILE__)
$LOAD_PATH << File.join(ROOT_DIR, "lib")

require "turtle"
require "ppm"

require "enumerator"

class TurtlePPMWriter
  PPM_WIDTH, PPM_HEIGHT = 400, 400
  
  X_MIN, X_MAX = -200, 200
  Y_MIN, Y_MAX = -200, 200

  X_TRANS = lambda { |u| PPM_WIDTH  * (u - X_MIN) / (X_MAX - X_MIN) }
  Y_TRANS = lambda { |u| PPM_HEIGHT * (u - Y_MIN) / (Y_MAX - Y_MIN) }

  def initialize(code)
    @code = code
    
    @ppm = PPM.new(:width => PPM_WIDTH, :height => PPM_HEIGHT)
    
    run_code do |segment|
      if segment.size > 1
        segment.collect { |point| transform(point) }.each_cons(2) do |line|
          @ppm.draw_line(*line.flatten)
        end
      else
        @ppm.draw_point(*transform(segment.first))
      end
    end
  end
  
  def save(file)
    @ppm.save(file)
  end
  
  private
  
  def run_code(&block)
    turtle = Turtle.new
    turtle.run(@code)
    turtle.track.each(&block)
  end
  
  def transform(point)
    x, y = point
    [X_TRANS[x].round, Y_TRANS[y].round]
  end
end

# Commands to be run if no command line argument is given.
CIRCLE_DESIGN = <<CODE
def circle
   pd; 90.times { fd 6; rt 4 }; pu
end
18.times { circle; rt 20 }
CODE

output = if ARGV.size >= 2 and ARGV.first == "-o"
  ARGV.shift
  ARGV.shift
else
  File.basename(ARGV.first || "circle_design", ".rb")
end
code = if ARGV.empty?
  CIRCLE_DESIGN
else
  ARGF.read
end
TurtlePPMWriter.new(code).save(output)
