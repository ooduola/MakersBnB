# frozen_string_literal: true

feature 'user can list a space' do
  scenario 'user can navigate to list a space' do
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    expect(page).to have_button('List a space')
  end

  scenario 'takes user to list a space' do
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    click_button 'List a space'
    expect(page).to have_content('list a space')
  end
end
