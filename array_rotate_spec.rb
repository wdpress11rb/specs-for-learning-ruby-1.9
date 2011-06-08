require "rspec"

describe Array do
  it "rotate" do
    array = [1, 2, 3]

    array.rotate.should     == [2, 3, 1]
    array.rotate(2).should  == [3, 1, 2]
    array.rotate(-1).should == [3, 1, 2]

    array.should            == [1, 2, 3]

    array.rotate!.should    == [2, 3, 1]

    array.should            == [2, 3, 1]
  end
end
