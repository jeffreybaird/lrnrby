##turtle program
## create a system that recieves a variable and and outputs a grid of ". " * the variable 
puts "what is the size of your grid?"
grid_size = gets.chomp
i=0
xarray = []
yarray = []
while i<=grid_size.to_i
   xarray[i] = ". "
   ##puts ". " * grid_size.to_i
   yarray[i] = xarray
   i+= 1

x = 0
while x<= grid_size.to_i 
 puts yarray[x].join
 x ++
end
##write the instructions (not sure how to do this, maybe increment throught the arrays?)
889