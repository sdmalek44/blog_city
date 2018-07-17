require 'rails_helper'

describe 'when user visits /blog/#' do
  describe 'as default user' do
    it 'can edit comment they created ' do
      user1 = User.create(email: 'blah@bla.com', username: "penelope",
                  password: "boom",
                  role: 0)
      category = Category.create!(name: 'footwear')
      blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
      comment1 = blog.comments.create!(body: 'blahblah', user_id: user1.id)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user1)

      visit blog_path(blog)

      expect(page).to have_button("Edit Comment")
      click_on "Edit Comment"

      expect(current_path).to eq(edit_blog_comment_path(blog, comment1))
      updated = 'updated comment'

      fill_in :comment_body, with: updated
      click_on "Update Comment"

      expect(current_path).to eq(blog_path(blog))
      expect(page).to have_content(updated)
    end
  end
end
