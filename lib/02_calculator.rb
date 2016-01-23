def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(numbers)
  numbers.inject(0) { |sum, obj| sum + obj } #using Enumerable
end

def multiply(numbers)
  product = 1
  numbers.each do |number|
    product = product * number
  end
  product
end

def power(base, exp)
  base ** exp
end

def factorial(number)
  if number == 0
    return 1
  else
    number * factorial(number - 1)
  end
end