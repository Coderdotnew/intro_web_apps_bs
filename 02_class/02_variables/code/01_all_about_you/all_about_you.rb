# there is no rspec file for this code
# don't write over any code or variable names
# this file is to become comfortable with gets.chomp and interpolation
# fix the string interpolation on the final printed string in the `all_about_you` method
# run the following file (ruby all_about_you.rb) in your Terminal
# enter your information when asked by the program

def all_about_you
# interpolate the final string with the correct variables to print a complete sentence
  puts "What is your first name?"
  f_name = gets.chomp
  puts "What is your last name?"
  l_name = gets.chomp
  puts "What school do you go to?"
  school = gets.chomp
  puts "What is your favorite movie?"
  favorite_movie = gets.chomp
  puts "Who is your favorite music artist?"
  music_artist = gets.chomp
  puts "Hello, I'm f_name l_name! I attend school. My favorite movie is favorite_movie. And my favorite music artist is music_artist."
end

all_about_you