# -*- coding: utf-8 -*-

require "rspec"

describe String do
  it "a-zをA-Zで置き換える" do
    "abcde123".tr("a-z", "A-Z").should == "ABCDE123"
  end
end
