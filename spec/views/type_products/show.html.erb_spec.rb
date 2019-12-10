require 'rails_helper'

RSpec.describe "type_products/show", type: :view do
  before(:each) do
    @type_product = assign(:type_product, TypeProduct.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
