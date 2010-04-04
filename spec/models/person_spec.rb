require 'spec_helper'

describe Person do
  before(:each) do
    @valid_attributes = {
      :name        => "Elwood Blues",
      :description => "Blues Brother"
    }
  end

  it "should create a new instance given valid attributes" do
    Person.create!(@valid_attributes)
  end
end
