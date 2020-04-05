secret_number = 5
guess = ""
guess_remaining = 12
puts "What difficulty would you like ? easy, medium or hard"
difficulty = gets.chomp()

while 
    if difficulty == "easy" and guess_remaining > 0 and guess != secret_number
        puts "Guess number between 1 - 10 in Six attempts"
        guess = gets.chomp().to_i
        guess_remaining -= 2
    
    elsif difficulty == "medium" and guess_remaining > 0 and guess != secret_number
        puts "Guess number between 1 - 20 in Four attempts"
        guess = gets.chomp().to_i
        guess_remaining -= 3

    elsif difficulty == "hard" and guess_remaining > 0 and guess != secret_number
        puts "Guess number between 1 - 50 in Three attempts"
        guess = gets.chomp().to_i
        guess_remaining -= 4
    
    else
        if 
           guess == secret_number
           puts "You are right"
        
        elsif
            guess_remaining == 0
            puts "Gameover" 
        end
    end
end