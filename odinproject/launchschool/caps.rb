def caps (string)
  if string.length >= 10
    string = string.upcase
  else
    string
  end
end

puts caps('hello world')
puts caps('dog')