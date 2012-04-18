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

=end