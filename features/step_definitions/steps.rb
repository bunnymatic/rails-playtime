Given('an account has been created') do
  User.create(email: "joe@example.com", password: "8characters")
end

Given('I visit the login page') do
  visit sign_in_path
end

When('I fill in valid credentials') do
  fill_in "Email", with:"joe@example.com"
  fill_in "Password",  with:"8characters"
end

When('I click {string}') do |string|
  click_on string
end

Then("I see that I'm logged in") do
  expect(page).to have_content "Signed in as joe@example.com"
end
