require 'rails_helper'

describe 'when user visits /blogs' do
  it 'can see a list of all the blogs' do
    blog1 = Blog.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
    blog2 = Blog.create!(title: 'dogs', body: 'doggy', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blogs_path

    expect(page).to have_content(blog1.title)
    expect(page).to have_content(blog1.blurb)
    expect(page).to have_xpath("//img[@src='#{blog1.image}']")
    expect(page).to have_content(blog2.title)
    expect(page).to have_content(blog2.blurb)
  end
end
