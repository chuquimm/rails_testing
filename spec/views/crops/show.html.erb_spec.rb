require 'rails_helper'

RSpec.describe "crops/show", type: :view do
  before(:each) do
    @crop = assign(:crop, Crop.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
