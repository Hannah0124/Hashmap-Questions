require_relative "test_helper"

describe "palindrome_permutation?" do
  it "will work for hello" do
    expect(palindrome_permutation?("hello")).must_equal false
  end

  it "will work for 'carrace'" do
    expect(palindrome_permutation?("carrace")).must_equal true
  end

  it "will work for emptystring" do
    expect(palindrome_permutation?("")).must_equal true
  end

  it "will work for racecar" do
    expect(palindrome_permutation?("racecar")).must_equal true
  end

  it "will return false for raceca" do
    expect(palindrome_permutation?("raceca")).must_equal false
  end   

  it "will return true for hannah" do 
    expect(palindrome_permutation?("hannah")).must_equal true
  end 
end