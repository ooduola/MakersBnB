# frozen_string_literal: true
feature 'user can list a space' do
  scenario 'user can navigate to list a space' do
    visit '/'
    expect(page).to have_selector(:link_or_button, 'List a space')
  end
  scenario 'takes user to list a space' do
    visit '/'
    click_button 'List a space'
    expect(page).to have_content('list a space')
  end
end
