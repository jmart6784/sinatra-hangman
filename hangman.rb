require "sinatra"
require "sinatra/reloader" if development?

class Ai
  attr_reader :word
  def initialize
    @word = ''
  end

  def random_word
    all_words = File.readlines("5desk.txt")
    until @word.length >= 5 && @word.length <= 12 do
      @word = all_words[rand(all_words.length)]
    end
    @word.chomp.downcase
  end
end

class Player
  attr_reader :guess
  def initialize(length)
    @guess = Array.new(length, "_")
  end
end

class Game
  attr_reader :progress

  def initialize
    @answer = Ai.new.random_word
    @guess = Player.new(@answer.length).guess
    @progress = { 'answer' => @answer, 'guess' => @guess, 'round' => 1, 'stickman' => 0, 'missed' => Array.new }
  end

  def play
    round = progress['round']
    stickman = progress['stickman']
    missed = progress['missed']
    guess = progress['guess']
    answer = progress['answer']

    until stickman == 6
      result = check_guess(letter)

      if result == "Correct"
        round += 1
        puts result
      elsif result == "Wrong"
        stickman += 1
        round += 1
        puts result
      else
        puts result
      end

      game_over?
    end
  end

  def game_over?(answer, guess, stickman)
    if answer.chars.join(' ') == guess
      "You win!"
    elsif stickman == 6
      "You lose!"
    else
      false
    end
  end

  def check_guess(letter)
    missed = progress['missed']
    guess = progress['guess']
    answer = progress['answer']

    if answer.include?(letter) && !guess.include?(letter)
      answer.chars.each_with_index do |x, index|
        if letter == x
          guess[index] = letter
        end
      end
      "Correct"
    elsif !missed.include?(letter) && !guess.include?(letter)
      missed << letter
      "Wrong"
    else
      "Letter already used!"
    end
  end
end

game = Game.new

get "/" do
  @progress = game.progress
  answer = @progress['answer']
  letter = params['letter']
  message = game.check_guess(letter) if letter != nil
  round = @progress['round']
  stickman = @progress['missed'].size
  @progress['round'] += 1
  guess = @progress['guess'].join(' ')
  missed = @progress['missed'].join(', ')
  game_over = game.game_over?(answer, guess, stickman)
  if game_over
    game = Game.new
    @progress = game.progress
  end
  erb :index, :locals => { :letter => letter, :missed => missed, :message => message, :round => round, :stickman => stickman, :game_over => game_over, :answer => answer, :guess => guess }
end