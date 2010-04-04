require 'spec_helper'

describe CheckInsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/check_ins" }.should route_to(:controller => "check_ins", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/check_ins/new" }.should route_to(:controller => "check_ins", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/check_ins/1" }.should route_to(:controller => "check_ins", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/check_ins/1/edit" }.should route_to(:controller => "check_ins", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/check_ins" }.should route_to(:controller => "check_ins", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/check_ins/1" }.should route_to(:controller => "check_ins", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/check_ins/1" }.should route_to(:controller => "check_ins", :action => "destroy", :id => "1") 
    end
  end
end
