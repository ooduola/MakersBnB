
feature 'sign up to MakersBnB' do
  scenario 'users can input name and password' do
    visit '/sign_up'

    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Submit'

    expect(page).to have_current_path('/')
  end
end