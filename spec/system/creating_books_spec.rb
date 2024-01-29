require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'new book sunny' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end

  it 'new book rainy' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end

end
