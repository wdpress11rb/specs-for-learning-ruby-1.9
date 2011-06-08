require "rspec"

describe Hash do
  it "key" do
    hash = { :a => 1, :b => 2 }

    hash.key(1).should == :a
    hash.key(2).should == :b
    hash.key(3).should be_nil
  end
end
