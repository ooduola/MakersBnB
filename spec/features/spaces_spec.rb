# frozen_string_literal: true

feature 'view spaces' do
  scenario 'user can view a list of spaces' do
    add_test_data
    visit '/homepage'
    expect(page).to have_content('is light and airy')
    expect(page).to have_content('my mums old room')
    expect(page).to have_content('nice and sunny')
  end

  scenario 'user can click on a space to request to book it' do
    add_test_data
    visit '/homepage'
    expect(page).to have_button('Check Availability')
  end
end

feature 'view requests' do
  scenario 'user can see button to take them to the requests page' do
    visit '/'
    sign_up
    login
    expect(page).to have_button('View Requests')
  end

  scenario 'button takes them to request page' do
    visit '/'
    sign_up
    login
    click_button 'View Requests'
    expect(page).to have_current_path('/requests')
  end
end
