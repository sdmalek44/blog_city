describe 'visiting show page' do
  it 'admin can edit a blog' do
    admin = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blog_path(blog)

    click_on "Edit"

    expect(current_path).to eq(edit_admin_blog_path(blog))

    check(category.name)
    fill_in :blog_title, with: 'title'
    fill_in :blog_body, with: 'body'
    fill_in :blog_image, with: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg'

    click_on "UPDATE BLOG"

    expect(current_path).to eq(blog_path(Blog.last))
    expect(page).to have_content('Title')
    expect(page).to have_content('body')

    expect(page).to have_content(category.name)
  end
  it 'redirects back to form if incorrect input for edit' do
    admin = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit edit_admin_blog_path(blog)
    check(category.name)
    fill_in :blog_title, with: ''
    fill_in :blog_body, with: 'body'
    fill_in :blog_image, with: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg'

    click_on "UPDATE BLOG"

    expect(current_path).to eq(admin_blog_path(blog))
  end
  it 'default user cannot see edit button' do
    user = User.create(email: 'blah@bla.com', username: "penelope",
                password: "boom",
                role: 0)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blog_path(blog)

    expect(page).to_not have_content("Edit")
  end
  it 'non user cannot see edit button' do
    category = Category.create!(name: 'footwear')
    blog = category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')

    visit blog_path(blog)

    expect(page).to_not have_content("Edit")
  end
end
