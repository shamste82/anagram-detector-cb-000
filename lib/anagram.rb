class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(w)
    # Sorts the words alphabetically
    sorted_word = @word.chars.sort.join
    sorted_w = w.map { |w| w.chars.sort.join}
    index = Array.new
    list_of_matches = Array.new
    #Matches to check if anagrams
    sorted_w.each_with_index do |x, i|
      if x == sorted_word
        index << i
      end
    end
    #Create an array of unsorted/original matches and returns it
    index.each { |x| list_of_matches << w[x]}
    list_of_matches
  end

end
