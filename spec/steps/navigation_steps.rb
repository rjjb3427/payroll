step "I'm logged in" do
  @user = create :user, :accepted_invitation
  visit new_user_session_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'password'
  click_on 'Log in'
end

step "I'm on the experience chart page" do
  visit experience_path
end

step "I'm on the salaries chart page" do
  visit root_path
end

step "I'm on that employee page" do
  visit employee_path(@employee)
end

step "I'm on the balances chart page" do
  visit balances_path
end
