feature 'Users' do
  scenario 'can sign up' do
    visit('/users/new')
    fill_in 'user[user_name]', with: 'tester'
    fill_in 'user[password]', with: '123456'
    fill_in 'user[email]', with: 'tester@hotmail.com'
    click_on "Submit"
    
    expect(page).to have_content 'tester'
  end
end