# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
#
# Quick Tips:
#
#   You will need to remember how to convert a string into a number.
#   Don’t forget to wrap from z to a.
#   Don’t forget to keep the same case.

def caesarcipher string, shift_factor
  #split string
  #map through and
  #  replace each string with its char code
  #  add the shift_factor
  #  if new char code is out of bounds, deduct difference
  #   90 is the cap for CAPS and 122 for DOWN
  #  return char code to string
  #return joined string
  shift_factor = shift_factor % 26
  string_to_transform = string.split("")

  string_to_transform = string_to_transform.map do |letter|
    bit = letter.ord
    new_letter = bit + shift_factor

    if (bit < 65 || bit > 90) && (bit < 97 || bit > 122)
      letter
    else
      if bit <= 90 && new_letter > 90
        new_letter -= 26
      elsif bit <= 122 && new_letter > 122
        new_letter -= 26
      end

      new_letter.chr
    end
  end

  string_to_transform.join("")
end

puts caesarcipher('wyd?', 3)