require 'rails_helper'

feature 'Blogs' do
  scenario 'Create blog' do
    visit new_blog_path
    fill_in 'Title', with: 'Hello, world!'
    fill_in 'Content', with: 'This is awesome blog.'
    click_button 'Create Blog'
    expect(page).to have_content 'Blog was successfully created.'
    expect(page).to have_content 'Hello, world!'
    expect(page).to have_content 'This is awesome blog.'
  end
end