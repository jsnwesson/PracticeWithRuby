def range(number)
  puts "pick a number between 0 and 100"
  number = gets.chomp.to_i
  result = ""

  if number < 0
    result = "it's negative! Pick another number!"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is over 100!"
  end
end

puts range(-1)
puts range(20)
puts range(51)
puts range(79)
puts range(1000)
