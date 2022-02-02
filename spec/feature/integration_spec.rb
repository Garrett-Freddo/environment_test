
# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book, title test', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Garrett Freddo'
    fill_in 'Price', with: 12.94
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book, author test', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Garrett Freddo'
    fill_in 'Price', with: 12.94
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Garrett Freddo')
  end
end

RSpec.describe 'Creating a book, price test', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Garrett Freddo'
    fill_in 'Price', with: 12.94
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(12.94)
  end
end

RSpec.describe 'Creating a book, date test', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Garrett Freddo'
    fill_in 'Price', with: 12.94
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content(Date.current.month)
    expect(page).to have_content(Date.current.day)
  end
end

