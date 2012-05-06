# Draw a tree. Adapted from Chapter 10 of "Computer Science Logo Style",
# Chapter 10.
def tree _size
   if _size < 5
      forward _size; back _size; return
   end
   forward _size / 3
   left 30; tree _size * 2 / 3; right 30
   forward _size / 6
   right 25; tree _size / 2; left 25
   forward _size / 3
   right 25; tree _size / 2; left 25
   forward _size / 6
   back _size
end
back 180
pen_down
tree(240.0)
