def get_input(prompt)
  puts prompt
  gets.chomp
end

def calculate(operation, first_number, second_number)
  case operation
  when '+'
    first_number + second_number
  when '-'
    first_number - second_number
  when '*'
    first_number * second_number
  when '/'
    first_number / second_number
  when 'exp'
    first_number ** second_number
  end
end

input_operation = get_input("Enter an operation (+, -, *, /, exp):")
input_first_number = get_input("Enter a first number:").to_i
input_second_number = get_input("Enter a second number:").to_i

puts "The result is:"
puts calculate(input_operation, input_first_number, input_second_number)
