
feature 'sign up to MakersBnB' do
  scenario 'users can input name and password' do
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    expect(page).to have_current_path('/spaces')
  end
end

feature 'sign up page has login button' do
  scenario 'user can see and click login button' do
    visit '/'
    click_button 'Login'
    expect(page).to have_current_path('/login')
  end
end

feature 'upon signup listings page contains username' do
  scenario 'return username on listing page' do
    visit '/'
    fill_in :username, with: 'ontest'
    fill_in :password, with: '1234'
    click_button 'Sign Up'
    expect(page).to have_content('ontest')
  end
end
