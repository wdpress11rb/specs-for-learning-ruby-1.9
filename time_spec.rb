require "rspec"

describe Time do
  it "wednesday?" do
    birthday = Time.local(2011, 6, 29)

    birthday.wednesday?.should be_true
    birthday.friday?.should be_false
  end
end
