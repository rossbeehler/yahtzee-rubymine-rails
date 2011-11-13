require 'spec_helper'

describe HomeController do
  describe "GET index" do
    it "response with success" do
      get :index
      response.code.should == "200"
    end

    it "renders the index template" do
      get :index
      response.should render_template "index"
    end
  end
end

