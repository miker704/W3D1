# My Select
# Now extend the Array class to include my_select that 
# takes a block and returns a new array containing only elements 
# that satisfy the block. Use your my_each method!

# Example:

a = [1, 2, 3]
a.my_select { |num| num > 1 } # => [2, 3]
a.my_select { |num| num == 4 } # => []