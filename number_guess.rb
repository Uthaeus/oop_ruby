def game 
    num = rand 25
    puts "Guess a number between 0 and 24"

    loop do 
        user_answer = gets.chomp.to_i

        if user_answer == num 
            puts "You guessed it!"
            break
        elsif user_answer > num 
            puts "You guessed too high - please guess again"
        elsif user_answer < num 
            puts "You guessed too low, try guessing higher"
        end
    end
end

game 