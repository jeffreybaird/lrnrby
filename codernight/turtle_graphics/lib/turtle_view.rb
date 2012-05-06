#  Created by Morton Goldberg on November 02, 2006.
#  turtle_view.rb

require "tk"

# Turtles don't actually know how to draw, they only know how to lay down a
# track, which is a description of a drawing. It takes a turtle view to
# transform a track into line objects that Ruby/Tk can draw on a canvas.
# Another way to look at it: a turtle is the model for a turtle view.

class TurtleView
   DEFAULT_FRAME = [[-200.0, 200.0], [200.0, -200.0]]

   attr_accessor :frame

   # <turtle> is the turtle whose track will be drawn on the Tk canvas.
   # A turtle must respond to the messages "track" and "clear".
   # 
   # <canvas> is a Tk convas widget.
   # 
   # <frame> is the rectangle in turtle space that you want to map to
   # the bounding rectangle of the Tk canvas. A view needs to know the
   # frame to generate the affine transformation from turtle coordinates
   # to canvas coordinates.
   def initialize(turtle, canvas, frame=DEFAULT_FRAME)
      @turtle = turtle
      @canvas = canvas
      @frame = frame
      @turtles = []
   end

   # Construct the affine transformation from turtle space to canvas
   # space. This method must be called when the canvas is mapped.
   # 
   # <w> is width of the canvas; <h> is height of the canvas.
   def handle_map_event(w, h)
      top_lf, btm_rt = frame
      x0, y0 = top_lf
      x1, y1 = btm_rt
      @x_xform = make_xform(x0, x1, w)
      @y_xform = make_xform(y0, y1, h)
   end

   # Clear the canvas and the turtle.
   def clear
      @canvas.delete(:all)
      @turtle.clear
   end

   # Transform the turtle's track into TkcLine objects and add them to the
   # canvas' display list. This method expects a track to be an array of
   # the form
   #     track ::= [segment, segment, ...]
   #     segment ::= [point, point, ...]
   #     point ::= [x, y]
   # where x and y are floats.
   def draw
      @turtle.track.each do |seqment|
         if seqment.size > 1
            pts = seqment.collect { |pt| transform(pt) }
            TkcLine.new(@canvas, pts)
         end
      end
   end

   # Transform a point given in turtle coordinates to canvas coordinates.
   def transform(turtle_pt)
      x, y = turtle_pt
      [@x_xform.call(x), @y_xform.call(y)]
   end

private

   # Return a transformation that maps one coordinate in turtle space to
   # its corresponding coordinate in canvas space.
   def make_xform(u_min, u_max, v_max)
      lambda { |u| v_max * (u - u_min) / (u_max - u_min) }
   end

end