require "spec_helper"

describe FactoriesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/factories" }.should route_to(:controller => "factories", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/factories/new" }.should route_to(:controller => "factories", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/factories/1" }.should route_to(:controller => "factories", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/factories/1/edit" }.should route_to(:controller => "factories", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/factories" }.should route_to(:controller => "factories", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/factories/1" }.should route_to(:controller => "factories", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/factories/1" }.should route_to(:controller => "factories", :action => "destroy", :id => "1")
    end

  end
end
