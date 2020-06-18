# frozen_string_literal: true

feature 'request' do
  scenario 'check that request page exits' do
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    click_button 'View Requests'
    expect(page).to have_content('hello world')
  end
end