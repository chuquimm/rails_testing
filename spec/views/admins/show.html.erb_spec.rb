require 'rails_helper'

RSpec.describe "admins/show", type: :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :admin_id => "Admin",
      :password_digest => "Password Digest",
      :name => "Name",
      :root => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Admin/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
