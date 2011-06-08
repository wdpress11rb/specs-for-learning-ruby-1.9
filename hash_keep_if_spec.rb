require "rspec"

describe Hash do
  it "keep_if" do
    hash = { 1 => :a, 2 => :b, 3 => :c }

    hash.keep_if.should be_an_instance_of Enumerator
    hash.keep_if { |i| i < 3 }.should ==
                    { 1 => :a, 2 => :b }
    hash.should ==
                    { 1 => :a, 2 => :b }

    hash.keep_if { |i| i < 3 }.should ==
                    { 1 => :a, 2 => :b }
  end
end
