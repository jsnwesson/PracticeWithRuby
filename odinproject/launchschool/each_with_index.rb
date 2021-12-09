# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.

def using_each_with_index (array)
  array.each_with_index { |val, index| puts "This value #{val} is at index #{index}" }
end

using_each_with_index([-1, 2, 5, 8, 'cat', 'Ninja Turtle'])