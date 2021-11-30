# PROMPT 1: Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
# 1) thousands place 2) hundreds place 3) tens place 4) ones place
# number = 4936
# thousands = number / 1000
# hundreds = number % 1000 / 100
# tens = number % 1000 % 100 / 10
# ones = number % 1000 % 100 % 10
#
# puts "thousands: #{thousands}"
# puts "hundreds: #{hundreds}"
# puts "tens: #{tens}"
# puts "ones: #{ones}"

# PROMPT 2: Write a program that uses a hash to store a list of movie titles with the year they came out.
# Then use the puts command to make your program print out the year of each movie to the screen.

# movies = { :star_wars => 1974, :shawshank_redemption => 1995, :there_will_be_blood => 2007, :children_of_men => 2009}

# puts movies[:star_wars]
# puts movies[:shawshank_redemption]
# puts movies[:there_will_be_blood]
# puts movies[:children_of_men]

# UPDATED WAY OF WRITING HASH SINCE RUBY 1.9

# movielist = { star_wars: 1974, shawshank_redemption: 1995, there_will_be_blood: 2007, children_of_men: 2009}
#
# puts movielist[:star_wars]
# puts movielist[:shawshank_redemption]
# puts movielist[:there_will_be_blood]
# puts movielist[:children_of_men]

# PROMPT 3: Use the dates from the previous example and store them in an array.
# Then make your program output the same thing as exercise 3.

# movieyear = [1974, 1995, 2007, 2009]
# puts movieyear[0]
# puts movieyear[1]
# puts movieyear[2]
# puts movieyear[3]


# PROMPT 4: Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# five_factorial = 5 * 4 * 3 * 2 * 1
# puts five_factorial
# puts 6 * five_factorial
# puts 7 * 6 * five_factorial
# puts 8 * 7 * 6 * five_factorial

# PROMPT 5: Write a program that calculates the squares of 3 float numbers of your choosing
#           and outputs the result to the screen.
# first = 1.03 ** 2
# second = 2.04 ** 3
# third = 3.0984 ** 4
#
# puts first
# puts second
# puts third