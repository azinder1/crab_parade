require 'rails_helper'


describe "creates product by admin user" do
  before() do
    user = create(:user, :admin => true)
    visit new_user_session_path
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '123456'
    click_on 'Log in'
  end

  it 'will add a new product' do
    visit new_product_path
    fill_in "Name", :with => 'I am a product'
    fill_in "Description", :with => 'I am a description'
    fill_in "Price", :with => '4.00'
    click_on "Create Product"
    expect(page).to have_content('I am a product')
  end

  # it 'will redirect if current user is nil' do
  #   visit log_out_path
  #   visit new_product_path
  #   expect(page).to_not have_content('Content')
  # end

  it 'will fail to create a product' do
    visit new_product_path
    click_on "Create Product"
    expect(page).to have_content('fix these errors')
  end

end
