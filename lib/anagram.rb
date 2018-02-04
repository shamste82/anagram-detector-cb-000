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
    sorted_w.each do |w|
      if w == sorted_word
        match = true
      end
    end
    match
  end

end
