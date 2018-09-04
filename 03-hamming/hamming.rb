require 'pry'
class Hamming

  # def initialize(string1, string2)
  #   @string1 = string1
  #   @string2 = string2
  # end

  def self.compute(string1, string2)
    @string1_array = string1.split(//)
    @string2_array = string2.split(//)

    if @string1_array.length != @string2_array.length
      raise ArgumentError, "Strings are not the same length"
    end

    distance = 0
    i = 0

    @string1_array.each do |letter|
      if @string1_array[i] != @string2_array[i]
        distance += 1
        i += 1
      elsif @string1_array[i] == @string2_array[i]
        i += 1
      end
    end
    return distance
  end
end
