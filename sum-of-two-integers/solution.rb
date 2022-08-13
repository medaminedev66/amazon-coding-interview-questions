require 'set'

def find_sum_of_two arr, val
  is_found = false
  visited_nums = Set.new
  arr.each_with_index do |num, idx|
    if visited_nums.include?(val - num)
      is_found = true
    end

    visited_nums << num
  end

  return is_found
end

p find_sum_of_two [5, 7, 1, 2, 8, 4, 3], 15
p find_sum_of_two [5, 7, 1, 2, 8, 4, 3], 19
