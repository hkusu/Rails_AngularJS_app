require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :age => 1,
        :memo => "MyText"
      ),
      Person.create!(
        :name => "Name",
        :age => 1,
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
