require 'rails_helper'

describe "user visits admin/categories/new" do
  context 'as admin' do
    it 'admin can create a new blog and see the new info on show page' do
      user = User.create!(email: 'blah@bla.com', username: "fern@gully.com", password: "password", role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_category_path

      fill_in :category_name, with: 'category'
      click_on "Create Category"

      expect(current_path).to eq(category_path(1))
      expect(page).to have_content('category')

      blog1 = Blog.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'http://www.via-victoria.com/wp-content/uploads/2017/06/IMG_6879-1024x768.jpg')
      blog2 = Blog.create!(title: 'dogs', body: 'doggy', image: 'http://www.via-victoria.com/wp-content/uploads/2017/06/IMG_6879-1024x768.jpg')
      BlogCategory.create!(blog_id: blog1.id, category_id: 1)
      BlogCategory.create!(blog_id: blog2.id, category_id: 1)

      visit category_path(1)

      expect(page).to have_content(blog1.title)
      expect(page).to have_content(blog2.title)
    end
    it 'renders new page if all attributes not passed' do
      user = User.create!(email: 'blah@bla.com', username: "fern@gully.com", password: "password", role: 1)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_category_path

      fill_in :category_name, with: ''
      click_on "Create Category"

      expect(current_path).to eq(admin_categories_path)
    end
  end
end
