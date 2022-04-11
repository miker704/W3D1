# My Any
# Write my_any? to return true if any elements of 
# the array satisfy the block and my_all? to return 
# true only if all elements satisfy the block.

# Example:

a = [1, 2, 3]
a.my_any? { |num| num > 1 } # => true
a.my_any? { |num| num == 4 } # => false
a.my_all? { |num| num > 1 } # => false
a.my_all? { |num| num < 4 } # => true