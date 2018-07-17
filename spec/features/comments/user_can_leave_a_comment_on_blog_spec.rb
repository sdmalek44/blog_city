require 'rails_helper'

describe 'user visits blog show page' do
  it 'can leave a comment on the blog' do
    user = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 0)

    visit login_path
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_on "Log In"

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blog_path(blog)
    comment = 'this be a comment'

    fill_in :comment_body, with: comment
    click_on "Submit Comment"

    expect(page).to have_content(comment)
  end
end
