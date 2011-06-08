require "rspec"

describe Array do
  it "sample" do
    array = [1, 2, 3, 4]

    10.times {
      array.include?(array.sample).should be_true
    }

    10.times {
      array.sample(2).all? { |i|
        array.include? i
      }.should be_true
    }
  end
end
