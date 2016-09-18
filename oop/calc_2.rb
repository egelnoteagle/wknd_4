# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator
  include SimpleCalculator
  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

fancy_one = FancyCalculator.new

puts "Square:"
puts fancy_one.square_root(9)
puts

puts "Add"
puts fancy_one.add(4, 5)
puts

puts "Subtract:"
puts fancy_one.subtract(3, 2)
puts

puts "Multiply:"
puts fancy_one.multiply(3, 2)
puts

puts "Divide:"
puts fancy_one.divide(3, 2)
puts
