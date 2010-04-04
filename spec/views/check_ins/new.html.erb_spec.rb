require 'spec_helper'

describe "/check_ins/new.html.erb" do
  include CheckInsHelper

  before(:each) do
    assigns[:check_in] = stub_model(CheckIn,
      :new_record? => true
    )
  end

  it "renders new check_in form" do
    render

    response.should have_tag("form[action=?][method=post]", check_ins_path) do
    end
  end
end
