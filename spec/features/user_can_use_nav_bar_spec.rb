require 'rails_helper'

describe 'when user uses the nav bar' do
  it 'they can create new user' do
    visit blogs_path

    click_on "Sign Up"

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: 'puppy47'
    fill_in :user_password, with: 'taco'
    fill_in :user_email, with: 'malek_stephen@yahoo.com'
    click_on "Create User"

    expect(current_path).to eq(blogs_path)
  end
  it 'can login if already have an account' do
    user = User.create!(username: 'puppy47', password: 'taco', email: 'malek_stephen@yahoo.com')

    visit blogs_path

    click_on "Log In"
    expect(current_path).to eq(login_path)

    fill_in :username, with: 'puppy47'
    fill_in :password, with: 'taco'

    click_on "Log In"

    expect(current_path).to eq(blogs_path)
    expect(page).to have_content("Log Out")
    expect(page).to have_content("Welcome, #{user.username}!")
  end
  it 'can logout if user is logged in' do
    user = User.create!(username: 'puppy47', password: 'taco', email: 'malek_stephen@yahoo.com')
    visit blogs_path
    click_on "Log In"
    expect(current_path).to eq(login_path)
    fill_in :username, with: 'puppy47'
    fill_in :password, with: 'taco'
    click_on "Log In"
    expect(current_path).to eq(blogs_path)

    click_on "Log Out"

    expect(current_path).to eq(blogs_path)
    expect(page).to have_content("Sign Up", "Log In")
  end
end
