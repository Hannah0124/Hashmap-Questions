# Time complexity: O(n + m) => Because it is not a nested loop and it loops through depending on the array size. 
# note: 2 arrays have different length sizes, n and m. (n < m)

# Space complexity: O(n) => One hash and one array were created. O(2n) becomes O(n) after dropping a constant, 2.

def intersection(list1, list2)  
  # edge case
  return [] if list1.empty? || list2.empty?

  hash = {} 
  result = []

  list1.each do |num| 
    hash[num] = true 
  end 

  list2.each do |num|    
    result << num if hash[num] 
  end 

  return result
end 