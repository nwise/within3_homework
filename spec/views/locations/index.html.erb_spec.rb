require 'spec_helper'

describe "/locations/index.html.erb" do
  include LocationsHelper

  before(:each) do
    assigns[:locations] = [
      stub_model(Location, :current_visitors => []),
      stub_model(Location, :current_visitors => [])
    ]
  end

  it "renders a list of locations" do
    render
  end
end
