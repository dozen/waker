require "rails_helper"

RSpec.describe AutoSchedulersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/auto_schedulers").to route_to("auto_schedulers#index")
    end

    it "routes to #new" do
      expect(:get => "/auto_schedulers/new").to route_to("auto_schedulers#new")
    end

    it "routes to #show" do
      expect(:get => "/auto_schedulers/1").to route_to("auto_schedulers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/auto_schedulers/1/edit").to route_to("auto_schedulers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/auto_schedulers").to route_to("auto_schedulers#create")
    end

    it "routes to #update" do
      expect(:put => "/auto_schedulers/1").to route_to("auto_schedulers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/auto_schedulers/1").to route_to("auto_schedulers#destroy", :id => "1")
    end

  end
end
