require "rspec"

describe Hash do
  it "compare_by_identity" do
    hash = { "string" => 1, :symbol => 2 }

    hash["string"].should == 1
    hash[:symbol].should  == 2

    hash.compare_by_identity

    hash["string"].should be_nil
    hash[:symbol].should  == 2
  end
end
