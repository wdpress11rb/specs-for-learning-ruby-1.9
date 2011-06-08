require "rspec"

describe Hash do
  it "compare_by_identity?" do
    hash = {}

    hash.compare_by_identity?.should be_false
    hash.compare_by_identity
    hash.compare_by_identity?.should be_true
  end
end
