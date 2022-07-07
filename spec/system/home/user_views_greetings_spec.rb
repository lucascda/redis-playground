require 'rails_helper'

describe 'user visit homepage and sees' do

  it 'greetings message, succesfully' do
    visit root_path

    expect(page).to have_content 'Welcome to Redis Playground'
  end
end