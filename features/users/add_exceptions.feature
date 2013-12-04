Feature: Add Exceptions
  As a Proffesor/TA
  So that I can set exceptions on a daily basis
  I want to be able to change times and set exceptions

    Scenario: Professor can set exceptions
      Given I exist as a user
   		And I am a professor
      When I sign in with valid credentials
      When I visit the edit page
      And I fill in the Exceptions box with: Won't Be Here
      Then I should see an account edited message