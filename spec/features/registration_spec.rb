feature 'registration' do
    scenario 'a user can sign up' do
        visit '/users/new'
        fill_in('email', with: 'test@example.com')
        fill_in('password', with: 'password123')
        fill_in('name', with: 'Iron Man')
        click_button('Submit')
    
        expect(page).to have_content "Welcome, Iron Man"
        end
end