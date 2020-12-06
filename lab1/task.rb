def multiply_array(array)
  return array.inject(1) {|result, element| result *= element}
end

def arithmetic_mean(array)
  return (array.inject (0.0) {|res, elem| res += elem}) / array.size
end

def geometric_mean(array)
  return Math.sqrt(multiply_array(array))
end

def task4(array)
  return array.find_all {|i| i < 0 && i % 3 == 0}
end

def task5(array)
  return array.find_all {|i| i % 2 == 0 && i > 0}.inject(0.0) {|res, elem| res += elem}
end

def celsius_to_fahrenheit(array)
  return array.map {|elem| elem * 9.0 / 5.0 + 32.0}
end

def celsius_to_kelvin(array)
  return array.map {|elem| elem - 273.15}
end

puts('Task 1:')
puts('Hello world')
puts()
puts('Task 2:')
puts('Product of the array: %f' % [multiply_array(1..10)])
puts()
puts('Task 3:')
puts('Arithmetic mean: %f' % [arithmetic_mean(1..10)])
puts('Geometric mean: %f' % [geometric_mean(1..10)])
puts()
puts('Task 4:')
puts(task4(-10..10))
puts()
puts('Task 5:')
puts(task5(-10..10))
puts()
puts('Task 6:')
puts('Celsius to Fahrenheit:')
puts(celsius_to_fahrenheit(35..40))
puts('Celsuis to Kelvin:')
puts(celsius_to_kelvin(35..40))


