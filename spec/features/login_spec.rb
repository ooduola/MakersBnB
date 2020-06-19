# frozen_string_literal: true

require_relative 'login_helper.rb'

feature 'login to MakersBnB' do
  scenario 'user can input username and password to login' do
    visit '/login'
    login
    expect(page).to have_current_path('/')
  end
end

feature 'Login page has Signup button' do
  scenario 'user can see and click Signup button' do
    visit '/login'
    click_button 'Signup'
    expect(page).to have_current_path('/')
  end
end
