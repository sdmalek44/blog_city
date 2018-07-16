require 'rails_helper'

describe "user visits admin/categories/new" do
  context 'as admin' do
    xit 'admin can create a new blog and see the new info on show page' do
      user = User.create!(email: 'blah@bla.com', username: "fern@gully.com", password: "password", role: 1)
      category = Category.create!(name: 'sports')
      blog1 = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
      blog2 = category.blogs.create!(title: 'dogs', body: 'doggy', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_category_path

      fill_in :category_name, with: 'category'
      fill_in :category_image, with: 'http://www.via-victoria.com/wp-content/uploads/2017/06/IMG_6879-1024x768.jpg'
      click_on "Create Category"

      expect(current_path).to eq(category_path(1))
      expect(page).to have_content('category')
      expect(page).to have_xpath("//img[@src='#{category.image}']")
      expect(page).to have_content(blog1.title)
      expect(page).to have_content(blog2.title)
    end
  end
end
