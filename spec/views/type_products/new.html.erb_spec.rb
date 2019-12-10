require 'rails_helper'

RSpec.describe "type_products/new", type: :view do
  before(:each) do
    assign(:type_product, TypeProduct.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new type_product form" do
    render

    assert_select "form[action=?][method=?]", type_products_path, "post" do

      assert_select "input[name=?]", "type_product[name]"

      assert_select "input[name=?]", "type_product[description]"
    end
  end
end
