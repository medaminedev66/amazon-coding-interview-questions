def missing_number (arr, n)
  sum = 0
  or_sum = 0
  arr.each do |num|
    sum = sum + num
  end

  (1..arr.size+1).each do |e|
    or_sum = or_sum + e
  end

  return or_sum - sum
end

p missing_number [3, 7, 1, 2, 8, 4, 5], 6
