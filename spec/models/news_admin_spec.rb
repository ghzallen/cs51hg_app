require File.dirname(__FILE__) + '/../spec_helper'

describe NewsAdmin do
  it "should be valid" do
    NewsAdmin.new.should be_valid
  end
end
