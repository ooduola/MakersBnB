feature 'book a space' do
  scenario 'user can request to book a space' do
    visit '/book_space'
    expect(page).to have_content('Beautiful Relaxing Space')
  end

  scenario 'user can see a calendar' do
    visit '/book_space'
    expect(page).to have_content('Select your dates')
  end

end
