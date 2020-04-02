# Time complexity: O(n) => Because it is not a nested loop and it loops through depending on the input size. It changes from O(2n) to O(n) after dropping a constant, 2.

# Space complexity: O(n) => Because one hash was created. 

def permutations?(string1, string2)
  # edge case
  return false if string1.length != string2.length

  hash = {} 

  string1.each_char do |char|
    hash[char] ? hash[char] += 1 : hash[char] = 1 
  end 

  string2.each_char do |char|
    hash[char] ? hash[char] -= 1 : false 
  end 


  hash.values.find { |num| num != 0 } ? false : true
end 