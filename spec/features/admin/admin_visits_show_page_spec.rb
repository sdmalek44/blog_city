require 'rails_helper'

describe 'admin visiting show page' do
  it 'can delete a blog' do
    admin = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    category = Category.create!(name: 'footwear')
    blog1 = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
    blog2 = category.blogs.create!(title: 'dogs', body: 'poopadooopeyyy', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blog_path(blog1)

    click_on "Delete"

    expect(current_path).to eq(blogs_path)
    expect(page).to_not have_content(blog1.title, blog1.blurb)
    expect(page).to have_content(blog2.title, blog2.blurb)
  end
end
