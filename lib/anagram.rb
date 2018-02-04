class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(w)
    puts "#{@word}"
    puts "#{w}"
    sorted_word = @word.chars.sort.join
    sorted_w = w.map { |w| w.chars.sort.join}
    puts("#{sorted_w}")
    match = false
    list_of_matches = Array.new
    sorted_w.each do |w|
      if w == sorted_word
        list_of_matches << w
      end
    end
    puts "#{list_of_matches}"
    list_of_matches
  end

end
