# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

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

wb = WhizBangCalculator.new

puts "Exponent:"
puts wb.exponent(5, 10)
puts

puts "Hype:"
puts wb.hypotenuse(20, 65)
puts 

puts "Square:"
puts wb.square_root(9)
puts

puts "Add"
puts wb.add(4, 5)
puts

puts "Subtract:"
puts wb.subtract(3, 2)
puts

puts "Multiply:"
puts wb.multiply(3, 2)
puts

puts "Divide:"
puts wb.divide(3, 2)
puts

