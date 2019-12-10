require 'rails_helper'

RSpec.describe "type_products/edit", type: :view do
  before(:each) do
    @type_product = assign(:type_product, TypeProduct.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit type_product form" do
    render

    assert_select "form[action=?][method=?]", type_product_path(@type_product), "post" do

      assert_select "input[name=?]", "type_product[name]"

      assert_select "input[name=?]", "type_product[description]"
    end
  end
end
