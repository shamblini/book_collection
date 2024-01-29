require 'rails_helper'

RSpec.describe "CreatingBooks", type: :system do
  before do
    driven_by(:rack_test)
  end

  # Unit test for book creation - title attribute
  it 'should set and get title' do
    book = Book.new(title: "Sample Title")
    assert_equal "Sample Title", book.title
    
  end

  # Integration test for book creation - title attribute
  it 'creates new book' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: '19.99'
    fill_in 'Date', with: '2024-01-01'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end

  it 'attempt to create improper book' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: '2024-01-01'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end

  # Unit test for book creation - author attribute
  it 'should set and get author' do
    book = Book.new(author: "Jk Rowling")
    assert_equal "Jk Rowling", book.author
    
  end

  # Integration test for book creation - author attribute
  it 'creates new book' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: '2024-01-01'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end

   # Unit test for book creation - price attribute
   it 'should set and get price' do
    book = Book.new(price: 19.99)
    assert_equal 19.99, book.price
    
  end

  # Integration test for book creation - price attribute
  it 'creates new book' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: '2024-01-01'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end

  # Unit test for book creation - Date attribute
  it 'should set and get Date' do
    book = Book.new(date: "2024-01-1")
    assert_equal "2024-01-1", book.date
    
  end

  # Integration test for book creation - Date attribute
  it 'creates new book' do
    visit '/books/new'

    fill_in 'Title', with: 'New Book'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 19.99
    fill_in 'Date', with: '2024-01-01'
    click_on 'Create Book'

    expect(page).to have_content('Book was successfully created.')
    
  end
end
