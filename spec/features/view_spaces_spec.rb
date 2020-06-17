feature 'view spaces' do
  scenario 'user can view a list of spaces' do
    add_test_data
    visit '/'
    expect(page).to have_content('is light and airy')
    expect(page).to have_content('my mums old room')
    expect(page).to have_content('nice and sunny')
  end
end
