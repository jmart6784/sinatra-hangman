word_list = File.read "5desk.txt"
word_array = word_list.split(" ")

rword = word_array[rand(1..61406)]
random_word = rword.downcase

att = (random_word.length * 1.5) + 1
attempts = att.to_i
letters_used = ""
display = "_" * random_word.length

def welcome
  puts " ___       __   _______   ___       ________  ________  _____ ______   _______      "
  puts "|\\  \\     |\\  \\|\\  ___ \\ |\\  \\     |\\   ____\\|\\   __  \\|\\   _ \\  _   \\|\\  ___ \\ "
  puts "\\ \\  \\    \\ \\  \\ \\   __/|\\ \\  \\    \\ \\  \\___|\\ \\  \\|\\  \\ \\  \\\\\\__\\ \\  \\ \\   __/| "
  puts " \\ \\  \\  __\\ \\  \\ \\  \\_|/_\\ \\  \\    \\ \\  \\    \\ \\  \\\\\\  \\ \\  \\\\|__| \\  \\ \\  \\_|/__ "
  puts "  \\ \\  \\|\\__\\_\\  \\ \\  \\_|\\ \\ \\  \\____\\ \\  \\____\\ \\  \\\\\\  \\ \\  \\    \\ \\  \\ \\  \\_|\\ \\ "
  puts "   \\ \\____________\\ \\_______\\ \\_______\\ \\_______\\ \\_______\\ \\__\\    \\ \\__\\ \\_______\\ "
  puts "    \\|____________|\\|_______|\\|_______|\\|_______|\\|_______|\\|__|     \\|__|\\|_______| "
end

def result(win)
  if win == true
    puts "  ___    ___ ________  ___  ___         ___       __   ___  ________   ___ "
    puts " |\\  \\  /  /|\\   __  \\|\\  \\|\\  \\       |\\  \\     |\\  \\|\\  \\|\\   ___  \\|\\  \\ "
    puts " \\ \\  \\/  / | \\  \\|\\  \\ \\  \\\\\\  \\      \\ \\  \\    \\ \\  \\ \\  \\ \\  \\\\ \\  \\ \\  \\ "
    puts "  \\ \\    / / \\ \\  \\\\\\  \\ \\  \\\\\\  \\      \\ \\  \\  __\\ \\  \\ \\  \\ \\  \\\\ \\  \\ \\  \\ "
    puts "   \\/  /  /   \\ \\  \\\\\\  \\ \\  \\\\\\  \\      \\ \\  \\|\\__\\_\\  \\ \\  \\ \\  \\\\ \\  \\ \\__\\ "
    puts " __/  / /      \\ \\_______\\ \\_______\\      \\ \\____________\\ \\__\\ \\__\\\\ \\__\\|__| "
    puts "|\\___/ /        \\|_______|\\|_______|       \\|____________|\\|__|\\|__| \\|__|  ___ "
    puts "\\|___|/                                                                    |\\__\\ "
    puts "                                                                           \\|__| "
  else
    puts "__________________________"
    puts "|  __________))______|____|"
    puts "| | / /      ||"
    puts "| |/ /       ||"
    puts "| | /        ||.-''."
    puts "| |/         |/ _  _\\ "
    puts "| |          || X  X|"
    puts "| |          (\\\\`_.'"
    puts "| |         .-`--'."
    puts "| |        /Y . . Y\\ "
    puts "| |       // |   | \\\\ "
    puts "| |      //  | . |  \\\\ "
    puts "| |     (_)  | _ |  (_)"
    puts "| |          || ||"
    puts "| |          || ||"
    puts "| |          || ||"
    puts "| |          || ||"
    puts "| |         / | | \\ "
    puts "| |         `-' `-'"
    puts "  ___    __    __  __  ____    _____  _  _  ____  ____ "
    puts " / __)  /__\\  (  \\/  )( ___)  (  _  )( \\/ )( ___)(  _ \\ "
    puts "( (_-. /(__)\\  )    (  )__)    )(_)(  \\  /  )__)  )   /"
    puts " \\___/(__)(__)(_/\\/\\_)(____)  (_____)  \\/  (____)(_)\\_)"
  end
end

def print_blanks(random_word)
  case random_word.length
  when 3
    three = "_ _ _"
    label_3 = "1 2 3"
    return three, label_3
  when 4
    four = "_ _ _ _"
    label_4 = "1 2 3 4"
    return four, label_4
  when 5
    five = "_ _ _ _ _"
    label_5 = "1 2 3 4 5"
    return five, label_5
  when 6
    six = "_ _ _ _ _ _"
    label_6 = "1 2 3 4 5 6"
    return six, label_6
  when 7
    seven = "_ _ _ _ _ _ _"
    label_7 = "1 2 3 4 5 6 7"
    return seven, label_7
  when 8
    eight = "_ _ _ _ _ _ _ _ "
    label_8 = "1 2 3 4 5 6 7 8"
    return eight, label_8
  when 9
    nine = "_ _ _ _ _ _ _ _ _"
    label_9 = "1 2 3 4 5 6 7 8 9"
    return nine, label_9
  when 10
    ten = "_ _ _ _ _ _ _ _ _  _"
    label_10 = "1 2 3 4 5 6 7 8 9 10"
    return ten, label_10
  when 11
    eleven = "_ _ _ _ _ _ _ _ _  _  _"
    label_11 = "1 2 3 4 5 6 7 8 9 10 11"
    return eleven, label_11
  when 12
    twelve = "_ _ _ _ _ _ _ _ _  _  _  _"
    label_12 = "1 2 3 4 5 6 7 8 9 10 11 12"
    return twelve, label_12
  when 13
    thirteen = "_ _ _ _ _ _ _ _ _  _  _  _  _"
    label_13 = "1 2 3 4 5 6 7 8 9 10 11 12 13"
    return thirteen, label_13
  when 14
    fourteen = "_ _ _ _ _ _ _ _ _  _  _  _  _  _"
    label_14 = "1 2 3 4 5 6 7 8 9 10 11 12 13 14"
    return fourteen, label_14
  when 15
    fifteen = "_ _ _ _ _ _ _ _ _  _  _  _  _  _  _"
    label_15 = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15"
    return fifteen, label_15
  end
end

def stats(random_word, blanks, labels, letters_used, attempts, verified, display, guess_prompt)
  if attempts > 0
    if display.include? "_"
      while display != verified && /[[:upper:]]/.match?(random_word) == true
        position = random_word.index(guess_prompt.upcase)
      
        random_word[position] = guess_prompt.downcase
        display[position] = guess_prompt
      end
      if random_word.include? guess_prompt
        letters_used << guess_prompt
        puts display.split("").join(" ")
        puts labels
        puts "Correct!"
        puts "Attempts: #{attempts}"
        puts "Letters Used: #{letters_used}"
        turn(random_word, blanks, labels, letters_used, attempts, display)
      else
        attempts -= 1
        letters_used << guess_prompt
        if attempts == 0
          result(false)
        else
          puts display.split("").join(" ")
          puts labels
          puts "WRONG!"
          puts "Attempts: #{attempts}"
          puts "Letters Used: #{letters_used}"
          turn(random_word, blanks, labels, letters_used, attempts, display)
        end
      end
    else
      result(true)
    end
  else
    result(false)
  end
end

def turn(random_word, blanks, labels, letters_used, attempts, display)
  if display.include? "_"
    puts "- Guess a letter OR"
    puts "- Guess the entire word OR"
    puts '- Type "exit" to quit the game'
    guess_prompt = gets.chomp.downcase

    if guess_prompt.length < 2
      if letters_used.include? guess_prompt
        puts "That letter has already been chosen"
        turn(random_word, blanks, labels, letters_used, attempts, display)
      else
        if random_word.include? guess_prompt
          j_blanks = blanks.split(" ").join("")
  
          while random_word.include? guess_prompt
            position = random_word.index(guess_prompt)
        
            random_word[position] = random_word[position].upcase
            j_blanks[position] = guess_prompt.upcase
          
            verified = j_blanks.downcase.split("").join(" ")
          end

          stats(random_word, blanks, labels, letters_used, attempts, verified, display, guess_prompt)
        elsif guess_prompt.downcase == 'exit'
          nil
        else
          stats(random_word, blanks, labels, letters_used, attempts, verified, display, guess_prompt)
        end
      end
    elsif guess_prompt.downcase == 'exit'
      nil
    elsif guess_prompt.downcase == random_word.downcase
      result(true)
    else
      puts "Enter only ONE letter!"
      turn(random_word, blanks, labels, letters_used, attempts, display)
    end
  else
    result(true)
  end
end

def start_game(random_word, blanks, labels, letters_used, attempts, display)
  welcome
  puts "Welcome to Hangman"
  puts 'Type "start" to begin or "exit" to quit.'
  start = gets.chomp.downcase
  if start == 'start'
    puts blanks
    puts labels
    turn(random_word, blanks, labels, letters_used, attempts, display)
  elsif start == 'exit'
    nil
  else
    start_game(random_word, blanks, labels, letters_used, attempts, display)
  end
end

blanks, labels = print_blanks(random_word)

start_game(random_word, blanks, labels, letters_used, attempts, display)