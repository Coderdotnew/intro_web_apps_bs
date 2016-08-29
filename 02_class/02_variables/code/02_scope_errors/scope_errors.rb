# go through each method in rspec and fix the error then check to make sure each test is passing!

keyword1 = "visibility"
def error1
  puts "Error 1 is fixed. Scope is about variable #{keyword1}."
end

def error2
  Variable_names = "can only start with a lower case letter or an underscore."
  puts "Error 2 is fixed. Variables #{variable_names}"
end

def error3
  _variable3 = "requires special syntax to input variable data into a string."
  puts "String interpolation _variable3"
end

def error4
  reassigning_variables = "Arizona Cardinals"
  reassigning_variables = "Phoenix Suns"
  puts "I love football, so my favorite team is the #{reassigning_variables}."
end