#write your code here

def add(num1, num2)

  sum = num1 + num2

end

def subtract(num1, num2)

  diff = num1 - num2

end

def sum(array)

  total = 0

  array.each { |a|
    total += a
  }

  total

end

def multiply(array)
  
  array.inject(:*)

end

def power(number1,raised)
  number1**raised
end
