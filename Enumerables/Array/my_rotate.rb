# My Rotate
# Write a method my_rotate that returns a 
# new array containing all the elements of the 
# original array in a rotated order. By default, 
# the array should rotate by one element. 
# If a negative value is given, the array is rotated in the opposite direction.

# Example:

a = [ "a", "b", "c", "d" ]
a.my_rotate         #=> ["b", "c", "d", "a"]
a.my_rotate(2)      #=> ["c", "d", "a", "b"]
a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
a.my_rotate(15)     #=> ["d", "a", "b", "c"]