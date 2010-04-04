require 'spec_helper'

describe "/locations/new.html.erb" do
  include LocationsHelper

  before(:each) do
    assigns[:location] = stub_model(Location,
      :new_record? => true
    )
  end

  it "renders new location form" do
    render

    response.should have_tag("form[action=?][method=post]", locations_path) do
    end
  end
end
