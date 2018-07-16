require 'rails_helper'

describe 'when user visits /blogs' do
  it 'can see a list of all the blogs' do
    blog = Blog.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
    category1 = blog.categories.create!(name: 'sports')
    category2 = blog.categories.create!(name: 'lifestyle')

    visit blogs_path

    expect(page).to have_content(category1.name)
    expect(page).to have_content(category2.name)
  end
end
