require 'rails_helper'
require 'redis_helper'

describe 'users sees info about' do
  before(:each) do
    redis_flush("localhost", 6380)
  end
  it 'total products registered, succesfully' do
    
    first_category = Category.create!(name: 'Eletronics')
    second_category = Category.create!(name: 'Home Stuff')
    first_product = Product.create!(name: 'Computer', price: 1800, quantity: 30, category: first_category)
    second_product = Product.create!(name: 'Spoon', price: 5, quantity: 12, category: second_category)
    first_product = Product.create!(name: '8GB RAM', price: 100, quantity: 80, category: first_category)
    second_product = Product.create!(name: 'RTX 3090', price: 3800, quantity: 7, category: first_category)
    visit root_path
    click_on 'Products'

    expect(page).to have_content "Total products registered: 4"
    
  end
end