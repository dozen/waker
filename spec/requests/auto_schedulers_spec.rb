require 'rails_helper'

RSpec.describe "AutoSchedulers", :type => :request do
  describe "GET /auto_schedulers" do
    it "works! (now write some real specs)" do
      get auto_schedulers_path
      expect(response).to have_http_status(200)
    end
  end
end
