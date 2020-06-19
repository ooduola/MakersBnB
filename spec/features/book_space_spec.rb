# frozen_string_literal: true

feature 'book a space' do
  scenario 'user can request to book a space' do
    visit '/book_space'
    expect(page).to have_content('Select your dates')
  end

  scenario 'user can see a calendar' do
    visit '/book_space'
    expect(page).to have_content('dates')
  end

  scenario 'user will be routed to request page after confirmation' do
    visit '/book_space'
    click_button 'request to book'
    expect(page).to have_current_path('/requests?start_date=&end_date=')
  end

  scenario 'user can see the name of the space they want to request' do
    add_single_test_data
    visit '/'
    sign_up
    login
    click_button 'Check Availability'
    expect(page).to have_content('loft')
  end
end
