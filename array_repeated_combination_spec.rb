require "rspec"

describe Array do
  it "repeated_combination" do
    array = [1, 2, 3]

    array.repeated_combination(1).sort.should ==
                        [[1], [2], [3]]
    array.repeated_combination(2).sort.should ==
                        [[1, 1], [1, 2], [1, 3],
                         [2, 2], [2, 3], [3, 3]]

    array.repeated_combination(0).sort.should ==
                        [[]]
  end
end
