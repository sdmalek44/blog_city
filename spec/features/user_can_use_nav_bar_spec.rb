require 'rails_helper'

describe 'when user uses the nav bar' do
  it 'they can create new user' do
    visit blogs_path

    click_on "Create New User"

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: 'puppy47'
    fill_in :user_password, with: 'taco'
    fill_in :user_email, with: 'malek_stephen@yahoo.com'
    click_on "Create User"

    expect(current_path).to eq(blogs_path)
  end
end
