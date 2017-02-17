require 'rails_helper'

describe 'the create a user process' do

  it 'will create a user' do
    visit new_user_registration_path
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '123456'
    fill_in 'Password confirmation', :with => '123456'
    click_on "Sign up"
    expect(page).to have_content('Welcome to Crab Parade')
  end
  it 'sign in pathway' do
    user = create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '123456'
    click_on 'Log in'
    expect(page).to have_content('Welcome to Crab Parade')
  end
  it 'sign in failure pathway' do
    visit new_user_session_path
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '1234567'
    click_on 'Log in'
    expect(page).to have_content('Log in')
  end
end
