feature 'login to MakersBnB' do
  scenario 'user can input username and password to login' do
    visit '/login'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Login'
    expect(page).to have_current_path('/spaces')
  end
end

feature 'Login page has Signup button' do
  scenario 'user can see and click Signup button' do
    visit '/login'
    click_button 'Signup'
    expect(page).to have_current_path('/')
  end
end
