Feature: Start Player
  In order to be happy
  As a user
  I want to access Start Player

  Scenario: Initial application
    Given I am on "the home page"
    When I go to "the home page"
    Then I should see "Start Player" within "title"
