# Time complexity: O(n) => Because it is not a nested loop and it loops through depending on the input size. It changes from O(2n) to O(n) after dropping a constant, 2.

# Space complexity: O(n) => Because one hash was created. 

def palindrome_permutation?(string)
  # edge case
  return true if string.empty?

  hash = {} 

  string.length.times do |i| 
    hash[string[i]] ? hash[string[i]] += 1 : hash[string[i]] = 1 
  end 


  p hash

  hash.count { |letter, count| count % 2 != 0 } > 1 ? false : true 
end 