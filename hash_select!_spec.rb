require "rspec"

describe Hash do
  it "select!" do
    hash = { 1 => :a, 2 => :b, 3 => :c }

    hash.select!.should be_an_instance_of Enumerator
    hash.select! { |i| i < 3 }.should ==
                    { 1 => :a, 2 => :b }
    hash.should ==
                    { 1 => :a, 2 => :b }

    hash.select! { |i| i < 3 }.should be_nil
  end
end
