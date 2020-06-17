
feature 'sign up to MakersBnB' do
  scenario 'users can input name and password' do
    visit '/sign_up'

    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Submit'

    expect(page).to have_current_path('/')
  end
end

feature 'sign up page has login button' do
  scenario 'user can see and click login button' do
    visit '/sign_up'

    click_button 'Login'
    expect(page).to have_current_path('/login')
  end
end
