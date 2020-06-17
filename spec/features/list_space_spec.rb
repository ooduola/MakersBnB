# frozen_string_literal: true

feature 'list a space' do
  scenario 'user can add a name of their space' do
    visit '/list_space'
    expect(page).to have_content('Name')
  end

  scenario 'user can add a description of their space' do
    visit '/list_space'
    expect(page).to have_content('Description')
  end

  scenario 'user can add the price per night for their space' do
    visit '/list_space'
    expect(page).to have_content('Price')
  end

  scenario 'user can submit their space' do
    visit '/list_space'
    click_button 'List my Space'
    expect(page).to have_content('book a space')
  end
end
