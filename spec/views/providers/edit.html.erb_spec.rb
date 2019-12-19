require 'rails_helper'

RSpec.describe "providers/edit", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :name => "MyString",
      :country => nil,
      :active => false,
      :delivery_condition => "MyText"
    ))
  end

  it "renders the edit provider form" do
    render

    assert_select "form[action=?][method=?]", provider_path(@provider), "post" do

      assert_select "input[name=?]", "provider[name]"

      assert_select "input[name=?]", "provider[country_id]"

      assert_select "input[name=?]", "provider[active]"

      assert_select "textarea[name=?]", "provider[delivery_condition]"
    end
  end
end
