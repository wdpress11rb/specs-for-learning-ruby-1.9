require "rspec"

describe Dir do
  it "home" do
    Dir.home.should           == "/Users/june29"
    Dir.home("june29").should == "/Users/june29"

    expect { Dir.home("june30") }.to raise_error
  end
end
