Feature: Play a simple game
  Scenario: Navigating to home page
    When I navigate to the yahtzee homepage
    Then I should have the ability to start a new game

  Scenario: Starting a new game
    When I start a new game
    Then I should see an empty scorecard
     And I should have a total score of 0
     And I should have the ability to roll the dice
