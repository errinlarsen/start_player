Feature: Start Player
  So I can find who will go first
  As a gamer
  I want to use the Start Player site

  Scenario: Home Page
    Given I am on "the home page"
    When I go to "the home page"
    Then I should see "Start Player" within "title"

  @wip
  Scenario: Pickers
    Given a picker named "Test Picker one" with a description of "Test picker one description"
    And a picker named "Test Picker two" with a description of "Test picker two description"
    When I go to "the home page"
    And I follow "Next" within "div#next_nav"
    Then I should see /Test Picker .../ within "h1#picker_name"
    And I should see /Test picker ... description/ within "p#picker_desc"

