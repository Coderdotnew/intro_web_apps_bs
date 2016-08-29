# unfortunately, rspec tests don't work too well with gets.chomp because it does not know what you will enter
# enter the following data below when prompted by your command line to pass the rspec test (MUST BE SPELLED AND SPACED CORRECTLY)

# name = Luke Skywalker 
# father = Darth Vader
# profession = Jedi

def luke_bio
  puts "What is your name?"
  name = gets.chomp
  puts "Who is your father?"
  father = gets.chomp
  puts "What is your profession?"
  profession = gets.chomp
  "My name is #{name}. My father is #{father}. I am a #{profession}."
end

# name = Harry Potter
# best_friend = Ron Weasley
# profession = Wizard

def harry_bio
  puts "What is your name?"
  name = gets.chomp
  puts "Who is your best friend?"
  best_friend = gets.chomp
  puts "What is your profession?"
  profession = gets.chomp
  "My name is #{name}. My best friend is #{best_friend}. I am a #{profession}."
end

# name = Frodo Baggins
# best_friend = Samwise Gamgee
# profession = Ring Bearer

def frodo_bio
  puts "What is your name?"
  name = gets.chomp
  puts "Who is your best friend?"
  best_friend = gets.chomp
  puts "What is your profession?"
  profession = gets.chomp
  "My name is #{name}. My best friend is #{best_friend}. I am a #{profession}."
end

