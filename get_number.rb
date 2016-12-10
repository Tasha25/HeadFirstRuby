#Get My Number Game
#Written by: you!

puts "Welcome to 'Get My Number!'" #stands for put string and is a method
print "What's your name? " #print does not add a newline to the string

input = gets #stands for get string and is also a method.

name = input.chomp #chomp method will remove the new line and store the return value in a new variable called "name"

puts "Welcome, #{name} !" #interpolating a value into a string

#'puts input.inspect' allows you to see new lines "\n"
# 'p input' will do the same thing.

#Store a random number for the player to guess.
puts "I've  got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Track how many gueses the player has made.
num_guesses = 0

#Track whether the palyer has guessed correctly.
guessed_it = false

# while num_guesses < 10 && guessed_it == false
until num_guesses == 0 || guessed_it

  num_guesses +=1
  # remaining_guesses = 10 - num_guesses
  # puts remaining_guesses.to_s + " guesses left."
  # or
  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  #Compare the quess to the target.
  #Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  elsif guess > target
    puts "Oops. Your guess was HIGH."
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end
  #If player ran out of turns, tell themw hat the mumber was.
  unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
  end
