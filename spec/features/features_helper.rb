# frozen_string_literal: true

def login
  visit '/login'
  fill_in :username, with: 'ontest'
  fill_in :password, with: '1234'
  click_button 'Login'
end