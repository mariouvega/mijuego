#able to restart if user decides too
def restart
  puts "Would you like to restart the game?"
  puts "(YES) or (NO)\n"
  user_restart = gets.chomp.downcase
  case user_restart
  when "yes"
    load "juego.rb"
  when "no"
    puts "\nThanks for playing!\n"
  else
    restart
  end
end
slow = Proc.new {|c| print c; sleep 0.03}
fast = Proc.new {|c| print c; sleep 0.001}
wynbase = "

 ▄         ▄ ▄         ▄ ▄▄        ▄ ▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄▄▄▄▄ ▄ ▄
▐░▌       ▐░▐░▌       ▐░▐░░▌      ▐░▐░░░░░░░░░░▌▐░░░░░░░░░░░▐░░░░░░░░░░░▐░░░░░░░░░░░▐░▐░▌
▐░▌       ▐░▐░▌       ▐░▐░▌░▌     ▐░▐░█▀▀▀▀▀▀▀█░▐░█▀▀▀▀▀▀▀█░▐░█▀▀▀▀▀▀▀▀▀▐░█▀▀▀▀▀▀▀▀▀▐░▐░▌
▐░▌       ▐░▐░▌       ▐░▐░▌▐░▌    ▐░▐░▌       ▐░▐░▌       ▐░▐░▌         ▐░▌         ▐░▐░▌
▐░▌   ▄   ▐░▐░█▄▄▄▄▄▄▄█░▐░▌ ▐░▌   ▐░▐░█▄▄▄▄▄▄▄█░▐░█▄▄▄▄▄▄▄█░▐░█▄▄▄▄▄▄▄▄▄▐░█▄▄▄▄▄▄▄▄▄▐░▐░▌
▐░▌  ▐░▌  ▐░▐░░░░░░░░░░░▐░▌  ▐░▌  ▐░▐░░░░░░░░░░▌▐░░░░░░░░░░░▐░░░░░░░░░░░▐░░░░░░░░░░░▐░▐░▌
▐░▌ ▐░▌░▌ ▐░▌▀▀▀▀█░█▀▀▀▀▐░▌   ▐░▌ ▐░▐░█▀▀▀▀▀▀▀█░▐░█▀▀▀▀▀▀▀█░▌▀▀▀▀▀▀▀▀▀█░▐░█▀▀▀▀▀▀▀▀▀▐░▐░▌
▐░▌▐░▌ ▐░▌▐░▌    ▐░▌    ▐░▌    ▐░▌▐░▐░▌       ▐░▐░▌       ▐░▌         ▐░▐░▌          ▀ ▀
▐░▌░▌   ▐░▐░▌    ▐░▌    ▐░▌     ▐░▐░▐░█▄▄▄▄▄▄▄█░▐░▌       ▐░▌▄▄▄▄▄▄▄▄▄█░▐░█▄▄▄▄▄▄▄▄▄ ▄ ▄
▐░░▌     ▐░░▌    ▐░▌    ▐░▌      ▐░░▐░░░░░░░░░░▌▐░▌       ▐░▐░░░░░░░░░░░▐░░░░░░░░░░░▐░▐░▌
 ▀▀       ▀▀      ▀      ▀        ▀▀ ▀▀▀▀▀▀▀▀▀▀  ▀         ▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀▀ ▀ ▀


\n"


"Hello! Let's see if you can guess the place.😎\n".each_char(&slow)
"You get one clue\nWould you like to know what its is?🤔\n".each_char(&slow)
puts "yes or nah"
answer = gets.chomp
if answer == "yes"
     puts "Where do you like to code😉"
elsif
     puts "Fine, your loss😒"
end

starting_sentence = "wynbase"
sentence_array = starting_sentence.split("").map(&:downcase)
accurate_count = sentence_array - [""]
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")


while sentence_array.count("") < accurate_count.count
      puts "Now guess a letter:"
     guess = gets.downcase.chomp

     if sentence_array.include?(guess)
          letter_index = sentence_array.find_index(guess)
          sentence_array[letter_index] = ""
          final_sentence[letter_index] = guess
          puts "Correct!  #{final_sentence.join}"
     else
          puts "Sorry, please try again."
     end
end
wynbase.each_char(&fast)
msg = "You win".each_char(&slow)

5.times do
  print "\r#{ msg }"
  sleep 0.5
  print "\r#{ ' ' * msg.size }"
  sleep 0.5
end
restart
