require 'rails_helper'

describe 'when user visits /blog/#' do
  describe 'as default user' do
    it 'can delete comment they created ' do
      user1 = User.create(email: 'blah@bla.com', username: "penelope",
                  password: "boom",
                  role: 0)
      category = Category.create!(name: 'footwear')
      blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
      comment1 = blog.comments.create!(body: 'blahblah', user_id: user1.id)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      visit blog_path(blog)

      expect(page).to have_button("Delete")
      click_on "Delete"

      expect(current_path).to eq(blog_path(blog))
      expect(page).to_not have_content(comment1.body)
    end
  end
end
