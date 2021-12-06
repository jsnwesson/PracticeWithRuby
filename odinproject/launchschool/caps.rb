# Write a method that takes a string as an argument.
# The method should return a new, all-caps version of the string, only if the string is longer than 10 characters.
def caps (string)
  if string.length >= 10
    string = string.upcase
  else
    string
  end
end

puts caps('hello world')
puts caps('dog')