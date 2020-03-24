require_relative "test_helper"

describe "Array Intersection" do
  it "returns [4] for [2, 3, 4], and [4, 5, 6]" do
    expect(intersection([2, 3, 4], [4, 5, 6])).must_equal [4]
  end

  it "returns [] for arrays that don't intersect" do
    expect(intersection([9, 30, 42], [56, 34, 90, 32])).must_equal []
  end

  it "returns [50, 25, 43] for 50, 43, 25, 72], and [25, 36, 43, 50, 80]" do
    expect(intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]).sort).must_equal [25, 43, 50]
  end

  it "returns [] for [50, 43, 25, 72], and []" do
    expect(intersection([50, 43, 25, 72], []).sort).must_equal []
  end
end