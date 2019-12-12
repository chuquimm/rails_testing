require 'rails_helper'

RSpec.describe "crops/new", type: :view do
  before(:each) do
    assign(:crop, Crop.new(
      :name => "MyString"
    ))
  end

  it "renders new crop form" do
    render

    assert_select "form[action=?][method=?]", crops_path, "post" do

      assert_select "input[name=?]", "crop[name]"
    end
  end
end
