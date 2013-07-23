class LargestProduct

  def find_largest_product(string_of_nums, n)
    @string_of_nums = string_of_nums
    @n = n
    string_length = @string_of_nums.length

    array_of_nums = @string_of_nums.split(//)
    counter = 0
    array_of_arrays = []
      array_of_nums.each_index do |i|
        array_of_nums[i] = array_of_nums[i].to_i
      end
      while counter <= string_length - @n
        array_of_arrays << array_of_nums.slice(counter..(counter + @n-1)) 
        counter += 1
      end
      array_of_arrays.each_index do |i|
        chunk = array_of_arrays[i]
          array_of_arrays[i] = chunk.inject(:*)
        end 
      array_of_arrays.max
    end
  end
