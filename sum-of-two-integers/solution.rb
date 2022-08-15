require 'set'

def find_sum_of_two(arr, val)
  is_found = false
  visited_nums = Set.new
  arr.each_with_index do |num, _idx|
    is_found = true if visited_nums.include?(val - num)

    visited_nums << num
  end

  is_found
end

p find_sum_of_two [5, 7, 1, 2, 8, 4, 3], 15
p find_sum_of_two [5, 7, 1, 2, 8, 4, 3], 19
