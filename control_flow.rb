x = 5
y = 8

# a one-condition if/else statement (i.e. "if x == true")

puts "This is a one condition if/else statement"

if x > 2
  puts "x is greater than 2"
elsif x == 2
  puts "x is equal to 2"
else
  puts "x is not greater than 2"
end

# a multi-condition if/else statement (i.e. "if x>0 && y< 10)

puts "This is a multi-condition if/else statement"

if x > 2 && x >= y
  puts "x is greater than 2 and y"
elsif x > 2 && x < y
  puts "x is greater than 2 but less than y"
else
  puts "x is less than 2 and y"
end

# if/then/else

puts "This is an if/then/else statement"

if (x == 2) then puts 'x is 2' else puts 'x is not 2' end

# unless

puts "This is an unless statement"

unless x >= 10
  puts "x is less than 10"
else
  puts "x is greater than or equal to 10"
end

# short circuit evaluation

g = false

if g && h
  puts "Hello"
end

# dangling else

puts "This demonstrates how the 'end' statement handles the dangling-else problem"

t = 12
k = 16

if t == 12
if k == 16
puts "Hullaballoo"
end
else
puts "Bullahalloo"
end

#It does not print 'Hello' because g is false.
#It does not notice that h does not exist, because it terminates the check after determing g is false
#Therefore, Ruby uses short circuit evaluation

# different kinds of loops: while, do/while, for, foreach

# while loop

puts "This is a while loop"

while x < y
  puts "x is less than y"
  x = x + 1
end

# do-while

puts "This is a do-while loop. There is also a break statement here"

loop do
  puts "this is a do-while loop"
  x = x + 1
  break if x > 11
end

#for

puts "This is a for loop"

for a in 1..10
  puts a
end

#for each

puts "This is a for-each loop equivalent"

array = ['A', 'B', 'C']
array.each { |x| puts x}

# a switch-case statement
# Ruby uses case expression instead:

puts "This is a case expression statement"

case x
when 10
  puts "x is 10"
  x+=1
when 11
  puts "x is 11"
when 12
  puts "x is 12"
else
  puts "x is not 10, 11 or 12"
end

# break and continue statements

#break
puts "This uses a break statement"

for b in 0..5
  if b == 2
    break
  end
  puts b
end

#continue
#Ruby uses next instead of continue

puts "This uses a next statement"

for c in 0..5
  if c < 3 then
    next
  end
  puts c
end

puts "Here are some other Ruby loops and statements"
puts "This is an until statement"

#until statement

until x < 5 do
  puts x
  x -= 1
end

puts "This is an until modifer"

#until modifier

begin
  puts x
  x += 1
end until x == 10
