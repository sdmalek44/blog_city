require 'rails_helper'

describe 'when user visits /categories/#' do
  it 'can see a list of all the blogs in that category' do
    category = Category.create!(name: 'sports')
    blog1 = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', blurb: 'shoesnstuff')
    blog2 = category.blogs.create!(title: 'boots', body: 'lookatdeesboots', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', blurb: 'bootsnstuff')

    visit category_path(category)

    expect(page).to have_content(category.name)
    expect(page).to have_content(blog1.title)
    expect(page).to have_content(blog1.blurb)
    expect(page).to have_xpath("//img[@src='#{blog1.image}']")
    expect(page).to have_content(blog2.title)
    expect(page).to have_content(blog2.blurb) 
  end
end
