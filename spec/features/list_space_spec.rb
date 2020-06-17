feature 'list a space' do
  scenario 'user can add a name of their space' do
    visit '/list_space'
      expect(page).to have_content('Name')
  end
end
