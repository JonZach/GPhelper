#@wip
Feature: Users can log in and log out
  In order to save my leagues
  As a user
  I want to log in

  Scenario: Happy Path
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    And I should not see "Sign In"

  Scenario: Wrong Password
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "wrong password" for "Password"
    And I press "Sign in"
    Then I should see "Invalid email or password."

  Scenario: Wrong Username
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "betty@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    Then I should see "Invalid email or password."