require 'rails_helper'

RSpec.describe "admins/index", type: :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :admin_id => "Admin",
        :password_digest => "Password Digest",
        :name => "Name",
        :root => false
      ),
      Admin.create!(
        :admin_id => "Admin",
        :password_digest => "Password Digest",
        :name => "Name",
        :root => false
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Admin".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
