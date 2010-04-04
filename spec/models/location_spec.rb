require 'spec_helper'

describe Location do
  before(:each) do
    @valid_attributes = {
      :name    => "Wrigley Field",
      :address => "1060 West Addison Street, Chicago, IL 60613"
    }
  end

  it "should create a new instance given valid attributes" do
    Location.create!(@valid_attributes)
  end
end
