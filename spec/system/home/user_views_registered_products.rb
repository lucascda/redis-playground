require 'rails_helper'

describe 'user visits product pages and sees' do
  it 'products list' do
    first_category = Category.create!(name: 'Eletronics')
    second_category = Category.create!(name: 'Home Stuff')

    first_product = Product.create!(name: 'Computer', price: 1800, quantity: 30, category: first_category)
    first_product = Product.create!(name: 'Spoon', price: 5, quantity: 12, category: second_category)

    visit root_path
    
    expect(page).to have_content 'Our products'
    expect(page).to have_content 'Name: Computer'
    expect(page).to have_content 'Price: $1,800.00'
    expect(page).to have_content 'Quantity: 30'
    expect(page).to have_content 'Category: Eletronics'
    expect(page).to have_content 'Name: Spoon'
    expect(page).to have_content 'Price: $5.00'
    expect(page).to have_content 'Quantity: 12'
    expect(page).to have_content 'Category: Home Stuff'


  end
end