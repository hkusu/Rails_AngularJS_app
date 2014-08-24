require 'rails_helper'

RSpec.describe "People", :type => :request do
  describe "GET /people" do
    it "works! (now write some real specs)" do
      get people_path
      expect(response.status).to be(200)
    end
  end
end
