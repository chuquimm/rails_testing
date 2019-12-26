require 'rails_helper'

RSpec.describe "admins/edit", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :admin_id => "MyString",
      :password_digest => "MyString",
      :name => "MyString",
      :root => false
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input[name=?]", "admin[admin_id]"

      assert_select "input[name=?]", "admin[password_digest]"

      assert_select "input[name=?]", "admin[name]"

      assert_select "input[name=?]", "admin[root]"
    end
  end
end
