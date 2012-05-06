#! /usr/bin/env ruby -w
#  Created by Morton Goldberg on November 02, 2006.
#  turtle_viewer.rb

require 'tk'
require "lib/turtle_view"
require "lib/turtle"

# A simple Ruby/Tk application for demonstrating turtle graphics.
# If a file path is supplied as a command line argument, the file is
# taken as the source for the turtle commands to be run. If no argument
# is given, default commands (CIRCLE_DESIGN -- see below) are run.

class TurtleViewer
   def initialize(code)
      @code = code
      # Create and lay out the viewer. Its only widget is a canvas.
      root = TkRoot.new {
         bg "DodgerBlue2"
         title "Turtle Graphics Viewer"
         }
      @canvas = TkCanvas.new(root) {
         relief :solid
         borderwidth 1
      }
      @canvas.pack(:fill=>:both, :expand=>true, :padx=>20, :pady=>20)
      # Run turtle commands when the canvas is mapped by Tk.
      @canvas.bind('Map') { run_code }
      # Set the window geometry; i.e., size and placement.
      win_w, win_h = 440, 440
      win_x = (root.winfo_screenwidth - win_w) / 2
      root.geometry("#{win_w}x#{win_h}+#{win_x}+50")
      root.resizable(false, false)
      # Make Cmnd+Q work as expected on Moc OS X.
      root.bind('Command-q') { Tk.root.destroy }
   end

   def run_code
      turtle = Turtle.new
      view = TurtleView.new(turtle, @canvas)
      view.handle_map_event(TkWinfo.width(@canvas),
                            TkWinfo.height(@canvas))
      turtle.run(@code)
      view.draw
   end
end

# Commands to be run if no command line argument is given.
CIRCLE_DESIGN = <<CODE
def circle
   pd; 90.times { fd 6; rt 4 }; pu
end
18.times { circle; rt 20 }
CODE

if ARGV.size > 0
   code = open(ARGV[0]) { |f| f.read }
else
   code = CIRCLE_DESIGN
end 
TurtleViewer.new(code)
Tk.mainloop
