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
puts 'What is your favorite num?'
fav_num = gets.chomp
new_num = fav_num.to_i + 1
puts name + '\'s favorite num is ' + fav_num + '.'
puts fav_num.to_s + ' is a little small, how about ' + new_num.to_s + '?'
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
ch1 = 'Chapter 1:  Getting Started'
chp1 = 'page 1'
ch2 = 'Chapter 2:  nums'
chp2 = 'page 9'
ch3 = 'Chapter 3:  Letters'
chp3 = 'page 13'
chapter = [ch1,ch2,ch3]
page = [chp1,chp2,chp3]
line_width = 100
puts('Table of Contents'.center(line_width))
puts(chapter[0].ljust(line_width/2) + page[0].rjust(line_width/2))
puts(chapter[1].ljust(line_width/2) + page[1].rjust(line_width/2))
puts(chapter[2].ljust(line_width/2) + page[2].rjust(line_width/2))
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
=begin #takes a num of strings and sorts them
puts 'Type anything'
n = 0
yourArray = []
while true
  word = gets.chomp
  yourArray = word
  puts yourArray
  n += 1
    if word == ''
      break
    end
end
puts yourArray.sort
=end
=begin #9.3 exercises
def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer "yes" or "no"'
        end
        end
    end
    puts 'Hello, and thank you for...'
    puts
    ask 'Do you like eating tacos?'
    ask 'Do you like eating burritos?'
    wets_bed = ask 'Do you wet the bed?'
    ask 'Don you like eating chimichangas?'
    puts 'Just a few more questions...'
    ask 'Do you like drining horchata?'
    ask 'Do you like eating flautas'
    puts
    puts 'DEBRIEDING'
    puts 'Thank you for...'
    puts
    puts wets_bed
    puts wets_bed
=end

=begin #first attempt old_roman_numeral
def old_roman_numeral num
  numarray = []
  n = 0
  i = 1
  v = 5
  x = 10
  l = 50
  c = 100
  d = 500
  m = 1000
  while num > 0
    if num >= m
      num -= m
      roman_character = 'M'
      numarray[n] = roman_character
      n += 1
    elsif num < m && num >= d
      num -= d
      roman_character = 'D'
      numarray[n] = roman_character
      n += 1
    elsif num < d && num >= c
       num -= c
        roman_character = 'C'
        numarray[n] = roman_character
        n += 1
    elsif num < c && num >= l
       num -= l
        roman_character = 'L'
        numarray[n] = roman_character
        n += 1
    elsif num < l && num >= x
        num -= x
        roman_character = 'X'
        numarray[n] = roman_character
        n += 1
    elsif num < x && num >= v
        num -= v
        roman_character = 'V'
        numarray[n] = roman_character
        n += 1
      else
        roman_character = 'I' * num
        numarray[n] = roman_character
        num -= num
      end
    end
    puts numarray.join
end
old_roman_numeral 1999
=end

=begin #second attempt old_roman_numeral

def old_roman_numeral num
  roman = ''
  thous = (num/1000)
  hunds = ((num -  (1000*thous))                  /100)
  tens  = ((num - ((1000*thous)+       (100*hunds)))/10)
  ones  = ((num - ((1000*thous)+       (100*hunds)+(10*tens))))
  
  roman = roman + 'M' * (num /       1000)
  if hunds == 9
     roman = roman + 'CM'
   else
     roman = roman + 'D' * (num % 1000 / 500)
     roman = roman + 'C' * (num % 500 / 100)
   end
  if tens == 9
    roman = roman + 'XC'
  else
  roman = roman + 'L' * (num % 100 /  50)
  roman = roman + 'X' * (num % 50    / 10)
  end
  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
  roman = roman + 'V' * (num % 10     / 5)
  roman = roman + 'I' * (num % 5      / 1)
end
  

puts roman 
puts thous 
puts hunds
puts tens
puts ones
end

old_roman_numeral 1655

=end

=begin

grid_line = ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ']
array = [['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. '],
         ['. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ','. ']]
 
     
def luck [][] 
  array [][] = "x "
  puts array

luck [3][4]
end
=end

#10.2 Sort
def sort_array 
 array = [honey, badger, fuck, shit, cock, balls]
 length = array.length
 holder = ''
 while i <= length
   if array[i+1] > array [i]
     holder = array[i]
     array[i] = array [i+1]
     array [i+1] = array [i]
     i++
     sort_array
     else
       i++
 end      
sort_array 
end
     
      