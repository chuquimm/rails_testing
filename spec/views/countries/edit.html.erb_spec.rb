require 'rails_helper'

RSpec.describe "countries/edit", type: :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      :country_id => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do

      assert_select "input[name=?]", "country[country_id]"

      assert_select "input[name=?]", "country[name]"
    end
  end
end