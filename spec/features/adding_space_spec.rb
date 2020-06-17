feature 'add spaces' do
  scenario 'user can add space to list' do
    visit '/'
    
    fill_in :space_name, with: 'very comfy couch'
    click_button 'Submit'
    expect(page).to have_content('very comfy couch')
  end
end
