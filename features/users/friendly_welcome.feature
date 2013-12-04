Feature: Friendly Welcome
  As an stressed student
  So that I feel welcome when I log-in
  I want a friendly welcome when I sign in

    Scenario: User signs in successfully
      Given I exist as a user
      When I sign in with valid credentials
      When I return to the site
      Then I should see Hello, Testy McUserton