# frozen_string_literal: true

feature 'request' do
  scenario 'check that request page exits' do
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    click_button 'View Requests'
    expect(page).to have_content('your requests')
  end

  scenario 'user can click space button' do
    visit '/requests'
    click_button 'Spaces'
    expect(page).to have_current_path('/spaces')
  end

  scenario 'user can see the name of the space they have requested' do
    add_single_test_data
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    click_button 'Check Availability'
    click_button 'request to book'
    expect(page).to have_content('loft')
  end

end
