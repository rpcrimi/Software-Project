Feature: Search
  As an interested 3rd party
  So that I can view any Prof/TA's office hours
  I want to search for Prof/TA's names without an account

    Scenario: User is not signed up
      Given I do not exist as a user
      When I am on the home page
      And I type in Alex
      And I click search
      Then the following should appear: Alex