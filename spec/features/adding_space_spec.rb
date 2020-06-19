# frozen_string_literal: true

feature 'user can list a space' do
  scenario 'user can navigate to list a space' do
    visit '/'
    sign_up
    login
    expect(page).to have_button('List a space')
  end

  scenario 'takes user to list a space' do
    visit '/'
    sign_up
    login
    click_button 'List a space'
    expect(page).to have_content('list a space')
  end
end
