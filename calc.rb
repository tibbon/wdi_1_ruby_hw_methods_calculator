require 'pry'

def calculate_if(first_number, second_number, operation)
  if operation == "+"
    return first_number + second_number
  elsif operation == "-"
    return first_number - second_number
  elsif operation == "*"
    return first_number * second_number
  elsif operation == "/"
    return first_number / second_number
  end
end

def calc_case(first_number, second_number, operation)
  case operation
  when "+"
    return first_number + second_number
  when "-"
    return first_number - second_number
  when "/"
    return first_number / second_number
  when "*"
    return first_number * second_number
  end
end

def advanced_calc(number, operation)
  case operation
  when "square"
    return number * number
  when "cube"
    return number * number * number
  end
end


def calculate_one_number
  puts "What one number calculation would you like to perform?"
  puts "sqrt, square, cube"
  operation = gets.chomp
  puts " Number: "

  # Gets user input, removes trailing newline, casts to float
  number = gets.chomp.to_f

  advanced_calc number, operation
end

def calculate_two_numbers
  puts "What two number calcuation would you like to perform?"
  puts "(+, -, /, *)"
  operation = gets.chomp
  puts "First number: "

  # Gets user input, removes trailing newline, casts to float
  first_number = gets.chomp.to_f
  puts "Second number: "

  # Gets user input, removes trailing newline, casts to float
  second_number = gets.chomp.to_f

  calc_case(first_number, second_number, operation)
end

def prompt_calculator
  puts "Would you like to perform a 1 number, or 2 number calculation?"
  how_many_numbers = gets.chomp.to_i

  if how_many_numbers == 1
    puts calculate_one_number
  elsif how_many_numbers == 2
    puts calculate_two_numbers
  else
    puts "No really, just 1 or 2"
    exit(0)
  end

  # For sanitizing Jason's .method.call()
  # operations = [:+, :-, :/, :*]
  # unless operations.include? operation
  #   puts "Only allowed operations. Try again"
  #   exit(0)
  # end



  # Jason's method. Somewhat dangerous if inputs aren't sanitized
  # puts first_number.method(operation).call(second_number)

  # puts calculate_if(first_number, second_number, operation)
end

prompt_calculator

