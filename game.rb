class Hangman
  def initialize
    @test = "test"
  end

  def start
    @word_list = File.read "5desk.txt"
    @word_array = @word_list.split(" ")
  
    @rword = @word_array[rand(1..61406)]
    @random_word = @rword.downcase
  
    @att = (@random_word.length * 1.5) + 1
    @attempts = @att.to_i
    @letters_used = ""
    @display = "_" * @random_word.length
    puts @random_word
  end
end

Hangman.new.start