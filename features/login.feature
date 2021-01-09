Feature: As a user I can login

Background:
  Given an account has been created
  Given I visit the login page

Scenario: login with good info
  When I fill in valid credentials
  And I click "Sign in"
  Then I see that I'm logged in

@javascript
Scenario: login with good info
  When I fill in valid credentials
  And I click "Sign in"
  Then I see that I'm logged in
