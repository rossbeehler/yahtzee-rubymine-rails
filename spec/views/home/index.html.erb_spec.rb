require "spec_helper"

describe "home/index.html.erb" do
  it "should display a New Game button" do
    render
    rendered.should have_button "New Game"
  end
end