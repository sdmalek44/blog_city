require 'rails_helper'

describe "user visits admin/blogs/new" do
  context 'ad admin' do
    it 'allows admin to see category create page' do
      admin = User.create(email: 'blah@bla.com', username: "penelope",
                  password: "boom",
                  role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

      visit new_admin_blog_path

      expect(page).to have_content("Admin Create Blog")
    end
    it 'does not allow default user to see admin new category page' do
      user = User.create(email: 'blah@bla.com', username: "fern@gully.com", password: "password", role: 0)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_blog_path

      expect(page).to_not have_content("Admin Create Blog")
      expect(page).to have_content("The page you were looking for doesn't exist.")
    end
    it 'admin can create a new blog and see the new info on show page' do
      user = User.create!(email: 'blah@bla.com', username: "fern@gully.com", password: "password", role: 1)
      cat1 = Category.create!(name: 'sports')
      cat2 = Category.create!(name: 'fitness')
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_blog_path

      check(cat1.name)
      check(cat2.name)
      fill_in :blog_title, with: 'title'
      fill_in :blog_body, with: 'body'
      fill_in :blog_image, with: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg'

      click_on "Create Blog"

      expect(current_path).to eq(blog_path(Blog.last))
      expect(page).to have_content('Title')
      expect(page).to have_content('body')

      expect(page).to have_content(cat1.name)
      expect(page).to have_content(cat2.name)
    end
    it 'goes back to create form if all attributes not entered' do
      user = User.create!(email: 'blah@bla.com', username: "fern@gully.com", password: "password", role: 1)
      cat1 = Category.create!(name: 'sports')
      cat2 = Category.create!(name: 'fitness')
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit new_admin_blog_path

      check(cat1.name)
      check(cat2.name)
      fill_in :blog_body, with: 'body'
      fill_in :blog_image, with: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg'

      click_on "Create Blog"

      expect(current_path).to eq(admin_blogs_path)
    end
  end
end
