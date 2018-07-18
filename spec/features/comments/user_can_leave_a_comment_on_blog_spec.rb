require 'rails_helper'

describe 'user visits blog show page' do
  it 'can leave a comment on the blog' do
    user = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 0)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blog_path(blog)
    comment = 'this be a comment'

    fill_in :comment_body, with: comment
    click_on "POST COMMENT"

    expect(page).to have_content(comment)
  end
  it 'can see all existing comments for blog' do
    user1 = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 0)
    user2 = User.create(email: 'ah@bla.com', username: "rover",
                password: "durp",
                role: 0)
    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
    comment1 = blog.comments.create!(body: 'blahblah', user_id: user1.id)
    comment2 = blog.comments.create!(body: 'heyhey', user_id: user2.id)

    visit blog_path(blog)

    expect(page).to have_content(comment1.body, comment1.user.username)
    expect(page).to have_content(comment2.body, comment2.user.username)
  end
end
