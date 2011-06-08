require "rspec"

describe Hash do
  it "rassoc" do
    { :a => 1, :b => 2 }.rassoc(1).should == [:a, 1]
    { :a => 1, :b => 2 }.rassoc(3).should be_nil
    { :a => 1, :b => 2, :c => 1 }.rassoc(1).should == [:a, 1]
  end
end
