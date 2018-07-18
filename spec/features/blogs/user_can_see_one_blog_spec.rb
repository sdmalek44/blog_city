require 'rails_helper'

describe 'when user visits /blogs/#' do
  it 'can see one blog with attributes' do
    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blogs_path

    click_on blog.title.titleize

    visit blog_path(blog)

    expect(page).to have_content(blog.title.titleize)
    expect(page).to have_content(blog.created_date)
    expect(page).to have_content(blog.body)
    expect(page).to have_xpath("//img[@src='#{blog.image}']")
    expect(page).to have_content(category.name)
  end
end
