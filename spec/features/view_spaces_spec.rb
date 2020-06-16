feature 'view spaces' do
  scenario 'user can view a list of spaces' do
    add_test_data
    visit '/'
    expect(page).to have_content('light and airy loft')
    expect(page).to have_content('my mums old room')
    expect(page).to have_content('sunny basement')
  end
end
