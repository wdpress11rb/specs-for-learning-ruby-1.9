require "rspec"

describe Array do
  it "repeated_permutation" do
    array = [1, 2, 3]

    array.repeated_permutation(1).sort.should ==
                        [[1], [2], [3]]
    array.repeated_permutation(2).sort.should ==
                        [[1, 1], [1, 2], [1, 3],
                         [2, 1], [2, 2], [2, 3],
                         [3, 1], [3, 2], [3, 3]]

    array.repeated_permutation(0).sort.should ==
                        [[]]
  end
end
