#Will x be overwritten if we declare it both inside and outside of a loop?

puts "Will a variable be overwritten if we declare it both inside and outside of a loop? Let's try with local variables."
x = 3
puts "x is originally " + x.to_s

for a in 1..1
  x = 5
end

puts "after the for loop, x is " + x.to_s

puts "\nNow let's try with global variables."
$x = 3
puts "x is originally " + $x.to_s

for a in 1..1
  $x = 5
end

puts "after the for loop, x is " + $x.to_s

puts "\nNow let's try with a mix of global and local variables."
$y = 3
puts "the y outside of the for loop is originally " + $y.to_s + " and global."
for a in 1..1
  y = 5
end
puts "the y inside the for loop is originally " + y.to_s + " and local."
puts "after the for loop, the local y is " + y.to_s + " and the global y is " + $y.to_s

puts "\nLet's try the reverse."
z = 3
puts "the z outside of the for loop is originally " + z.to_s + " and local."
for a in 1..1
  $z = 5
end
puts "the z inside the for loop is originally " + $z.to_s + " and global."
puts "after the for loop, the local z is " + z.to_s + " and the global z is " + $z.to_s

puts "\nVariables of the same type are universal: in a for loop or out, they will hold the same value."
puts "Variables of different types cannot change each other's values even if they have the same name."

#Will x be overwritten if we declare it first outside and then again inside a method?

puts "\nThis might be different if we declare the variable inside and outside of a method (as opposed to a loop). Let's try with local variables:"
a = 10
puts "The local variable a is initially " + a.to_s
puts "Inside the method, doesItChange, we say local variable a is equal to 100."

def doesItChange
  a = 100
end

val = doesItChange
puts "If we set variable val equal to the method, we get val=" + val.to_s + " and if we print a we get a=" + a.to_s
puts "The a inside the method is different than the a outside of it. Once the method ends, the a inside the method is gone."

puts "\nWhat happens if we try this experiment with global variables? Let's see:"
$a = 10
puts "The global variable a is initially " + $a.to_s
puts "Inside the method, doesItChange, we say global variable a is equal to 100."

def doesItChange
  $a = 100
end

val = doesItChange

puts "If we set val equal to the method, we get val=" + val.to_s + " and if we print global variable a we get $a=" + $a.to_s
puts "The global variable a changed to 100! Global variables inside methods affect global variables outside of them."

puts "\nWould this still happen if we did not declare $a outside of the method? Let's try:"

def doesItStillChange
  $b = 67
end

val = doesItStillChange
puts "Using our new method, val=" + $b.to_s
puts "This shows that global variables declared in a method exist outside of it."

puts "\nLocal variables are narrow in scope: a local variable in a method will not exist outside of it. Global variables are wider in scope: a global variable in a method will exist outside of it."

puts "\nLet's see how assignments work with lists instead of strings or integers. Here we have two lists, a and b. We are then assigning b to a, and changing a value in the list, b, at index 1. What will it output?"
a = ['c','a','t']
b = ['d','o','g']
a=b
b[1] = 'u'
puts a
puts b

puts "a and b are both references. When we say a=b, we are really telling a to refer to the same Object as b. Thus, when we change b[1] to u, both variabes, or both references, point to the same, altered Object."
puts "We get the same result if we change a[1] to u instead:"
a = ['c','a','t']
b = ['d','o','g']
a=b
a[1] = 'u'
puts a
puts b
