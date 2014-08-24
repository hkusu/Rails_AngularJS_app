require 'rails_helper'

RSpec.describe "people/edit", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :name => "MyString",
      :age => 1,
      :memo => "MyText"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "input#person_age[name=?]", "person[age]"

      assert_select "textarea#person_memo[name=?]", "person[memo]"
    end
  end
end
