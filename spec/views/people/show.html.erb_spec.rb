require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :name => "Name",
      :age => 1,
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
