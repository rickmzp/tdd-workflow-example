Feature: Poker Ledger

  As a poker player
  I want to manage a poker ledger
  So that the poker players know who won what

  Scenario: Poker player registers for the game
    When I register for a poker game
    Then I should be listed as a player for the poker game

  Scenario: Poker winner submits results of the game
    Given a poker game with players
    When I submit the result of the poker game
    Then the winner should receive the jackpot
    And the runner-up should win $40
    And the 3rd place winner should win $20
