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
    index = Array.new
    list_of_matches = Array.new
    sorted_w.each_with_index do |x, i|
      if x == sorted_word
        index << i
      end
    end
    index.each { |x| list_of_matches << w[index]}
    puts "#{list_of_matches}"
    list_of_matches
  end

end
