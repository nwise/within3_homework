require 'spec_helper'

describe "/people/show.html.erb" do
  include PeopleHelper
  before(:each) do
    assigns[:person] = @person = stub_model(Person)
  end

  it "renders attributes in <p>" do
    render
  end
end
