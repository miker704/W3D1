# My Reject
# Write my_reject to take a block and return a 
# new array excluding elements that satisfy the block.

# Example:

a = [1, 2, 3]
a.my_reject { |num| num > 1 } # => [1]
a.my_reject { |num| num == 4 } # => [1, 2, 3]