require 'pry-byebug'

def caesar_cipher(string, shiftNumber)
  alphabet = ("a".."z").to_a.map { |char| char.ord }

  number_array = string
    .downcase
    .split("")
    .map {|char| char.ord}

  encrypt = number_array.map do |num| 
    if num + shiftNumber > 122 
      (num - 25 + (shiftNumber - 1)).chr
    elsif alphabet.include?(num)
      (num + shiftNumber).chr
    else
      num.chr
    end
  end
  
  encrypt.join("").capitalize
end

caesar_cipher("hEllo World", 7)