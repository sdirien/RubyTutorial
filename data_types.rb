
#You can add an integer and a float; the result is a float
a = 3
b = 4.0
puts a+b
puts a/b

#Converting string to integer
x = 3
y = "3"
z = y.to_i #to_i converts to an integer; to_f converts to a float
puts x+z

z1 = z.to_s #this converts an integer to a string
puts z1

#You can convert a float to an integer, but you will lose everything past the decimal point, and it will not round up
c = 27.75
c1 = c.to_i
puts c1

#You can convert a string into an array by doing the following:
string = "one two three"
string_array = string.split
puts string_array

#Make a boolean
puts 1 == 1 #returns true
puts 1 == 2 #returns false
n = nil
puts n #prints nothing, because nil is nothing (null)

#Make an array
an_array = [1,2,3]
puts an_array
puts an_array[1] #returns 2

#Make a hash/dictionary
dict = { "one" => "uno", "two" => "dos", "three" => "tres" }
puts dict["one"] #returns "uno"
z = dict.fetch("one") #sets z to equal "uno"
puts z
puts dict.keys #prints all the keys (one, two, three)
