class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end
        self
    end

    def my_each_prc(prc)
        self.my_each(&prc)
    end

    def my_select(&prc)
        new_arr = []
        self.my_each {|ele| new_arr << ele if prc.call(ele)}
        new_arr
    end

    def my_reject(&prc)
        new_arr = []
        self.my_each {|ele| new_arr << ele if !prc.call(ele)}
        new_arr
    end

    def my_any?(&prc)
        new_arr = []
        self.my_each {|ele| new_arr << ele if prc.call(ele)}
        new_arr.length >= 1
    end

    def my_all?(&prc)
        new_arr = []
        self.my_each {|ele| new_arr << ele if prc.call(ele)}
        new_arr.length == self.length
    end

    def my_flatten
        new_arr = []

        self.my_each do |ele|
            if ele.is_a?(Array)
                new_arr += ele.my_flatten
            else
                new_arr << ele
            end
        end
        new_arr
    end

    def my_zip(*args)
        combined_grid=[self]+args
       


        rows=self.length
     
        p new_grid=Array.new(rows){Array.new(combined_grid.length)}


        (0...rows).each do |i|
            
            combined_grid.map! do |subArr|
                if subArr[i]==nil
                    nil
                else
                    subArr[i]
                end
            end

        end
         return combined_grid
    end

       

    
end

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
# p [ 1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
# p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]