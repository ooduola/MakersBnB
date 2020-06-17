feature 'add spaces' do
  scenario 'user can add space to list' do
    visit '/sign_up'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'

    fill_in :space_name, with: 'very comfy couch'
    click_button 'Submit'
    expect(page).to have_content('very comfy couch')
  end
end
