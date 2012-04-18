=begin secondsInMin = 60
#begin first assingment - calculating times
minutesInHour = 60
hourInDay = 24
dayInWeek = 7
dayInYear = 365
yearsInDecade = 10
puts 'I like'+' apple pie.'
puts 'blink ' * 4
puts hourInDay * dayInYear
puts minutesInHour * hourInDay * dayInYear * yearsInDecade
puts secondsInMin * minutesInHour * hourInDay * dayInYear * 24


# Assignment 5.6.1
puts gets
puts 'Hello! What is your name?'
name = gets.chomp
puts 'Your name is ' +  name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name


#Assignment 5.6.2
puts 'Hello! What is your name?'
name = gets.chomp
puts 'What is your favorite number?'
fav_number = gets.chomp
new_number = fav_number.to_i + 1
puts name + '\'s favorite number is ' + fav_number + '.'
puts fav_number.to_s + ' is a little small, how about ' + new_number.to_s + '?'


# Stuff in 6.1
letters = 'aBnsGolkMNH'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' o'.capitalize
puts letters


# More 6.1
line_width = 50
puts( 'Rain falls like water'.center(line_width))
puts( 'Drippity Droppity Drip'.center(line_width))
puts( 'If you are reading this'.center(line_width))
puts( 'boo for you :)'.center(line_width))


# Even More 6.1
line_width = 40
str = '--> text <--'
puts(str.ljust(line_width))
puts(str.rjust(line_width))
puts(str.center(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))


# 6.2 Things to try
puts 'What do you want?'
repeat = gets.chomp
puts 'WHADDAYA MEAN "' + repeat.upcase + '"?!? YOU\'RE FIRED!!'

=end

line_width = 100
puts('Table of Contents'.center(line_width))
puts('Chapter 1:  Getting Started'.ljust(line_width/2) + 'page 1'.rjust(line_width/2))
puts('Chapter 2:  Numbers'.ljust(line_width/2) + 'page 9'.rjust(line_width/2))
puts('Chapter 2:  Letters'.ljust(line_width/2) + 'page 13'.rjust(line_width/2))


