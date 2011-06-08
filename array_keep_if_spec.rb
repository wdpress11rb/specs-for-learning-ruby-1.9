require "rspec"

describe Array do
  it "keep_if" do
    array = %w(a b c d e)

    array.keep_if { |e|
      e =~ /[aiueo]/
    }.should == %w(a e)

    array.should == %w(a e)

    array.keep_if.should be_an_instance_of(Enumerator)
  end
end
