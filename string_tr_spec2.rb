# -*- coding: utf-8 -*-

require "rspec"

describe String do
  it "a-zをA-Cで置き換える" do
    "abcde123".tr("a-z", "A-C").should == "ABCCC123"
  end
end
