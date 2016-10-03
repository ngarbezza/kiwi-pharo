basic features
roundMatchesBasicFeature

	^'Feature: Round matches

  Scenario: Both draws are a draw
    Given a round match between "Team A" and "Team B"
    When the first leg finishes 1-1
      And the second leg finishes 2-2
    Then the global score should be 3-3
      And the result should be a draw'