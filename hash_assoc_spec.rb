require "rspec"

describe Hash do
  it "assoc" do
    { :a => 1, :b => 2 }.assoc(:a).should == [:a, 1]
    { :a => 1, :b => 2 }.assoc(:c).should be_nil
  end
end
