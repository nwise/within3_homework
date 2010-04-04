require 'spec_helper'

describe CheckInsController do

  def mock_check_in(stubs={})
    @mock_check_in ||= mock_model(CheckIn, stubs)
  end

  describe "GET new" do
    it "assigns a new check_in as @check_in" do
      CheckIn.stub!(:new).and_return(mock_check_in)
      get :new
      assigns[:check_in].should equal(mock_check_in)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created check_in as @check_in" do
        CheckIn.stub!(:new).with({'these' => 'params'}).and_return(mock_check_in(:save => true))
        post :create, :check_in => {:these => 'params'}
        assigns[:check_in].should equal(mock_check_in)
      end

      it "redirects to the created check_in" do
        CheckIn.stub!(:new).and_return(mock_check_in(:save => true))
        post :create, :check_in => {}
        response.should redirect_to(check_in_url(mock_check_in))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved check_in as @check_in" do
        CheckIn.stub!(:new).with({'these' => 'params'}).and_return(mock_check_in(:save => false))
        post :create, :check_in => {:these => 'params'}
        assigns[:check_in].should equal(mock_check_in)
      end

      it "re-renders the 'new' template" do
        CheckIn.stub!(:new).and_return(mock_check_in(:save => false))
        post :create, :check_in => {}
        response.should render_template('new')
      end
    end

  end


end
