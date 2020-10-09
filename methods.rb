#What we might call a function in Javascript is a method in Ruby
#Ruby has class methods, too, but they're also called methods
#So functions are also called methods in Ruby

puts "Here are some methods that are built-in to Ruby"

puts ".size is a method of String. 'ruby'.size gives us this output:"
puts "ruby".size #size is a method of String

puts ".first is a method of Array. arr.first gives us this output:"
arr = [1,2,3]
puts arr.first #first is a method of Array

puts "###"
puts "Now let's write some of our own methods. This one takes in two numbers, multiplies them, and returns the output. Here is the output of multiply 2, 2:"

def multiply(int1,int2) #'def' starts our function. 'multiply' is the function name, and then '(int1,int2)' are our parameters. Note: We cannot type check the parameters
  puts int1 * int2
end

multiply 2, 2 #calling a method looks a bit different in Ruby than other languages. For example, in Java you would surround the input by parenthesis like so: multiply(2,2)

puts "Let's write a method using strings. This one accepts a string, divides it in half, and returns both substrings. Here is the output of splitString 'teststring':"

def splitString(str)
  len = str.length #fun fact, length is a method of String
  t1= str.slice(0,len/2) #slice is also a method of String!
  t2= str.slice(len/2,len)
  puts "Substring one: #{t1} Substring two: #{t2}"
end

puts splitString "teststring"

puts "Let's write a simple recursive method, called factorial. Recursive methods call themselves. This is best exemplified with a factorial."
puts "A factorial multiplies every number from 1 to our target number. In this case, we input 6, so it multiplies 1 * 2 * 3 * 4 * 5 * 6."
puts "Here is the output:"

def factorial(n)
  return 1 if n <= 1
  n * factorial(n-1)
end

puts factorial 3

puts "###"

puts "We can also save the results of our methods into variables, like so:"

multiply_two_seven = multiply 2, 7
split_ilikecats = splitString "I like cats"
factorial9 = factorial 9

puts multiply_two_seven
puts split_ilikecats
puts factorial9

puts "###"

puts "Is Ruby pass-by-reference, or pass-by-value?"
puts "Pass-by-reference means that the arguments of a method are references to the variables that were passed into that method. Changing an argument changes the original variable."
puts "Pass-by-value means that the arguments of a method are values of the variables that were passed to the method. Changing an argument does not change the original variable."
puts "The following method demonstrates which type Ruby is. If it outputs 'hey' then it is pass-by-reference; if it outputs 'NotHey' it is pass-by-value."

def testPassType(argument)
  argument = "Hey"
end

testValue = "NotHey"

puts "This is the output of testPassType:"
puts testPassType testValue
puts "It output 'Hey'! This means that when we run 'testPassType testValue', argument becomes a reference to testValue. Therefore, altering argument also alters testValue."

puts "###"
puts "Let's write a method that returns a value, and then store that value into a variable."

def return8
  return 8
end

value = return8
puts value #we can print value in order to see if it does actually contain the number 8--and it does!
