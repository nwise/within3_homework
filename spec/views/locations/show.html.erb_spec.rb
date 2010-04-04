require 'spec_helper'

describe "/locations/show.html.erb" do
  include LocationsHelper
  before(:each) do
    assigns[:location] = @location = stub_model(Location)
  end

  it "renders attributes in <p>" do
    render
  end
end
