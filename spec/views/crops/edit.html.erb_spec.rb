require 'rails_helper'

RSpec.describe "crops/edit", type: :view do
  before(:each) do
    @crop = assign(:crop, Crop.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit crop form" do
    render

    assert_select "form[action=?][method=?]", crop_path(@crop), "post" do

      assert_select "input[name=?]", "crop[name]"
    end
  end
end
