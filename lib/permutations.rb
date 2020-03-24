# Time complexity: O(n) => Because it is not a nested loop and it loops through depending on the input size. It changes from O(2n) to O(n) after dropping a constant, 2.

# Space complexity: O(n) => Because one hash was created. 

def permutations?(string1, string2)
  # edge case
  return false if string1.length != string2.length

  hash = {} 

  i = 0
  while i < string1.length
    hash[string1[i]] = true 

    i += 1
  end  


  j = 0 
  while j < string2.length 
    return false if !hash[string2[j]]

    j += 1
  end 

  return true
end 