=begin secondsInMin = 60 first assign
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
=end

=begin # Assignment 5.6.1
puts gets
puts 'Hello! What is your name?'
name = gets.chomp
puts 'Your name is ' +  name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name
=end

=begin #Assignment 5.6.2
puts 'Hello! What is your name?'
name = gets.chomp
puts 'What is your favorite number?'
fav_number = gets.chomp
new_number = fav_number.to_i + 1
puts name + '\'s favorite number is ' + fav_number + '.'
puts fav_number.to_s + ' is a little small, how about ' + new_number.to_s + '?'
=end

=begin # Stuff in 6.1
letters = 'aBnsGolkMNH'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' o'.capitalize
puts letters
=end

=begin # More 6.1
line_width = 50
puts( 'Rain falls like water'.center(line_width))
puts( 'Drippity Droppity Drip'.center(line_width))
puts( 'If you are reading this'.center(line_width))
puts( 'boo for you :)'.center(line_width))
=end

=begin # Even More 6.1
line_width = 40
str = '--> text <--'
puts(str.ljust(line_width))
puts(str.rjust(line_width))
puts(str.center(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
=end

=begin # 6.2 Things to try
puts 'What do you want?'
repeat = gets.chomp
puts 'WHADDAYA MEAN "' + repeat.upcase + '"?!? YOU\'RE FIRED!!'
=end
=begin #table of contents
line_width = 100
puts('Table of Contents'.center(line_width))
puts('Chapter 1:  Getting Started'.ljust(line_width/2) + 'page 1'.rjust(line_width/2))
puts('Chapter 2:  Numbers'.ljust(line_width/2) + 'page 9'.rjust(line_width/2))
puts('Chapter 2:  Letters'.ljust(line_width/2) + 'page 13'.rjust(line_width/2))
=end
=begin #coder night exercise
puts('. '* 31 +'.')
puts(('. '* 7) +  ('X ' * 17) + ('. ' * 8))
puts(('. '* 6) + 'X ' + ('. ' * 17) + 'X ' + ('. ' * 7))
puts(('. '* 5) + 'X ' + ('. ' * 19) + 'X ' + ('. ' * 6))
puts(('. '* 4) + 'X ' + ('. ' * 21) + 'X ' + ('. ' * 5))
puts(('. '* 3) + 'X ' + ('. ' * 23) + 'X ' + ('. ' * 4))
puts(('. '* 2) + 'X ' + ('. ' * 25) + 'X ' + ('. ' * 3))
puts(('. '* 3) + 'X ' + ('. ' * 23) + 'X ' + ('. ' * 4))
puts(('. '* 4) + 'X ' + ('. ' * 21) + 'X ' + ('. ' * 5))
puts(('. '* 5) + 'X ' + ('. ' * 19) + 'X ' + ('. ' * 6))
puts(('. '* 6) + 'X ' + ('. ' * 17) + 'X ' + ('. ' * 7))
puts(('. '* 7) + 'X ' + ('. ' * 15) + 'X ' + ('. ' * 8))
puts(('. '* 8) + 'X ' + ('. ' * 13) + 'X ' + ('. ' * 9))
puts(('. '* 9) + 'X ' + ('. ' * 11) + 'X ' + ('. ' * 10))
puts(('. '* 10) + 'X ' + ('. ' * 9) + 'X ' + ('. ' * 11))
puts(('. '* 11) + 'X ' + ('. ' * 7) + 'X ' + ('. ' * 12))
puts(('. '* 12) + 'X ' + ('. ' * 5) + 'X ' + ('. ' * 13))
puts(('. '* 13) + 'X ' + ('. ' * 3) + 'X ' + ('. ' * 14))
puts(('. '* 14) + 'X ' + ('. ' * 1) + 'X ' + ('. ' * 15))
puts(('. '* 15) + 'X ' + ('. ' * 15))
=end
=begin #Math exercised 6.6

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))

=end
#Loops and whatnot 7.5
=begin #bottles of beer
nob = 99
while nob >= 0
  if nob > 0
  puts nob.to_s + ' bottles of beer on the wall, ' + nob.to_s + ' bottles of beer.'
  nob -= 1
  puts 'Take one down and pass it around, ' + nob.to_s + ' bottles of beer on the wall.'
  puts
  elsif nob == 0
    puts 'No more bottles of beer on the wall, no more bottles of beer.' 
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    break
  end
end
=end
=begin #deaf grandma
puts 'Hello Sonny, come give your Grandma a kiss'
while true
request = gets.chomp
year = (rand(51) + 1900)
  if request == 'BYE'.chomp
   puts 'BYE SWEETIE!'
   break
 end
  if request == request.upcase
      puts 'NO, NOT SINCE ' + year.to_s
  else
    request != request.upcase
    puts 'HUH?! SPEAK UP, SONNY!' 
  end
end
=end
=begin #leap year
puts 'please enter a starting year'
y1 = gets.chomp.to_i
puts'please enter an ending year'
y2 = gets.chomp.to_i
puts 'check it out, these years are leap years'
year = y1
while year <= y2
  if year % 4 == 0
    if year % 100 != 0 || year % 400 == 0
      puts year
  end
end

      year += 1
    end
=end
=begin # ARRAYS
other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'

puts other_peeps



languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end
puts 'And let\'s hear it for Java!'
puts '<circkets chirp in the distance>'
=end

=begin #Arrays 8.2
stages = ['suck','squeeze','bang','blow']
types = ['diesel', 'gas', 'electric', 'hydrogen']
empty = [' ']
combined = [stages, empty, types]

3.times do
  puts combined
  puts
end
=end
puts 'Type anything'
n = 0
yourArray = []
while true
  word = gets.chomp
  yourArray[n] = word
  puts yourArray
  n += 1
    if word == ''
      break
    end
end
puts yourArray.sort
