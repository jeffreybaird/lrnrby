sortArray = ["apple","carrot","bunny","xylophone","teacher","archer"]
i=0
def sort some_array
	some_array.each do |sort|
    if some_array[i+1] > sort
	   some_array[i] = some_array[i+1]
	   some_array[i+1] = sort
	   i+=1
   else
     i+=1
	end
end
end
puts sort sortArray
