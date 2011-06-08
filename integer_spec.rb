require "rspec"
require "prime"

describe Integer do
  it "each_prime" do
    Integer.each_prime(15).to_a.should ==
                             [2, 3, 5, 7, 11, 13]
    Integer.each_prime(15) { |e| e }.should == 13
  end
end
