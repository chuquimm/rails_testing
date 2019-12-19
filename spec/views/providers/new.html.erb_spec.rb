require 'rails_helper'

RSpec.describe "providers/new", type: :view do
  before(:each) do
    assign(:provider, Provider.new(
      :name => "MyString",
      :country => nil,
      :active => false,
      :delivery_condition => "MyText"
    ))
  end

  it "renders new provider form" do
    render

    assert_select "form[action=?][method=?]", providers_path, "post" do

      assert_select "input[name=?]", "provider[name]"

      assert_select "input[name=?]", "provider[country_id]"

      assert_select "input[name=?]", "provider[active]"

      assert_select "textarea[name=?]", "provider[delivery_condition]"
    end
  end
end
