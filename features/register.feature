Feature: Register
  In order to get access to partner portal
  A partner
  Should be able to register

    Scenario: Partner registers with invalid data
      When I go to the register page
      And I fill in "Email" with "invalidemail"
      And I fill in "Password" with "password"
      And I fill in "Confirm password" with ""
      And I press "Register"
      Then I should see error messages

    Scenario: Partner registers with valid data
      When I go to the register page
      And I fill in "Username" with "Bullwinkle"
      And I fill in "Email" with "email@person.com"
      And I fill in "Password" with "password"
      And I fill in "Confirm password" with "password"
      And I fill in "Name" with "My Name"
      And I fill in "Url" with "example.com"
      And I fill in "Address" with "123 Market St"
      And I fill in "City" with "San Francisco"
      And I select "California" from "State"
      And I fill in "ZIP Code" with "94113"
      And I fill in "Phone" with "415-555-1234"
      And I fill in "Logo image url" with "https://www.example.com/logo.jpg"
      And I press "Register"
      Then I should not see error messages
      And I should see "Log out"
