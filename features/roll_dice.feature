Feature: Roll Dice
  Scenario: Starting a game
    Given I am starting a new game
    When I roll the dice
    Then I should see 5 dice with values between 1 and 6