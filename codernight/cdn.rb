## program does not work
## haven't quite figured out how to generate a grid I can work with.
m = 'turtle trail'
o = 'nothing'
world = [[o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,m,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,],
         [o,o,o,o,o,o,o,o,o,o,o,o,o,]]
         
#uses this to find the current location of the turtle

def turtle_location world [x][y]
  x = 0
  y = 0
  if world [x][y] == 'turtle trail'
    return x
    return y
    x += 1
  else
    turtle_location (world [x+1] [y]) 
    turtle_location (world [x] [y+1])
  end

##takes direction 0, 90, 180, 270
## goal here is to decide the direction of the turtle and the number of spaces I want to move it
## this assumes there is only one 'm' in the system and then it changes the character to m in adjacent spaces   
def turtle_trail dir spaces
  if dir == '0'
     world [x] [y+1] = m
     turtle_trail (dir spaces-1) ##trying to make this recursive
   end
 elsif dir == 90
    world [x+1] [y] = m
    turtle_trail (dir spaces-1)
  end
elsif dir == 180
   world [x] [y+1] = m
   turtle_trail (dir spaces-1)
 end
elsif
    world [x-1] [y] = m
    turtle_trail (dir spaces-1)
end