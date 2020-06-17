feature 'book a space' do
  scenario 'user can request to book a space' do
    visit '/book_space'
    expect(page).to have_content('Beautiful Relaxing Space')
  end
end
