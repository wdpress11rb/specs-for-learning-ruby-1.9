require "rspec"

describe Range do
  it "cover?" do
    range = Time.gm(2011, 6, 29, 0, 0, 0, 0)..
            Time.gm(2011, 6, 30, 0, 0, 0, 0)

    point = Time.gm(2011, 6, 29, 12, 23, 56, 500)

    range.cover?(point).should be_true
    expect { range.include?(point) }.to raise_error
    expect { range.member?(point)  }.to raise_error
  end
end
