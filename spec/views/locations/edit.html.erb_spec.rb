require 'spec_helper'

describe "/locations/edit.html.erb" do
  include LocationsHelper

  before(:each) do
    assigns[:location] = @location = stub_model(Location,
      :new_record? => false
    )
  end

  it "renders the edit location form" do
    render

    response.should have_tag("form[action=#{location_path(@location)}][method=post]") do
    end
  end
end
