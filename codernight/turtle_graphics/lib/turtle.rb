#  Created by Morton Goldberg on November 02, 2006.
#  Modified on November 14, 2006
#  turtle.rb

# An implementation of Turtle Procedure Notation (TPN) as described in
# H. Abelson & A. diSessa, "Turtle Geometry", MIT Press, 1981.
# 
# Turtles navigate by traditional geographic coordinates: X-axis pointing
# east, Y-axis pointing north, and angles measured clockwise from the
# Y-axis (north) in degrees.

class Turtle
   include Math # turtles understand math methods
   DEG = Math::PI / 180.0

   attr_accessor :track
   alias run instance_eval

   def initialize
   end

   attr_reader :xy, :heading

   # Place the turtle at [x, y]. The turtle does not draw when it changes
   # position.
   def xy=(coords)
   end

   # Set the turtle's heading to <degrees>.
   def heading=(degrees)
   end

   # Raise the turtle's pen. If the pen is up, the turtle will not draw;
   # i.e., it will cease to lay a track until a pen_down command is given.
   def pen_up
   end

   # Lower the turtle's pen. If the pen is down, the turtle will draw;
   # i.e., it will lay a track until a pen_up command is given.
   def pen_down
   end

   # Is the pen up?
   def pen_up?
    end

   # Is the pen down?
   def pen_down?
   end

   # Places the turtle at the origin, facing north, with its pen up.
   # The turtle does not draw when it goes home.
   def home
   end

   # Homes the turtle and empties out it's track.
   def clear
   end

   # Turn right through the angle <degrees>.
   def right(degrees)
   end

   # Turn left through the angle <degrees>.
   def left(degrees)
   end

   # Move forward by <steps> turtle steps.
   def forward(steps)
   end

   # Move backward by <steps> turtle steps.
   def back(steps)
   end

   # Move to the given point.
   def go(pt)
   end

   # Turn to face the given point.
   def toward(pt)
   end

   # Return the distance between the turtle and the given point.
   def distance(pt)
   end

   # Traditional abbreviations for turtle commands.
   alias fd forward
   alias bk back
   alias rt right
   alias lt left
   alias pu pen_up
   alias pd pen_down
   alias pu? pen_up?
   alias pd? pen_down?
   alias set_h heading=
   alias set_xy xy=
   alias face toward
   alias dist distance
end
