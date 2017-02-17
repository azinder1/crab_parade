require 'rails_helper'


describe "can work with review model" do
  before() do
    user = create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '123456'
    click_on 'Log in'
    @product = create(:product)
  end
  it "can create a new review for a product" do
    visit product_path(@product)
    fill_in 'Content', :with => "This is a test"
    fill_in 'Rating', :with => "This is a test"
    click_on "Add Review"
    expect(page).to have_content("This is a test")
  end
end
