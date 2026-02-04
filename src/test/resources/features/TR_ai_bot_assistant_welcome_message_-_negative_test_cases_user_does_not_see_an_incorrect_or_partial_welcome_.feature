Feature: AI Bot Assistant Welcome Message - Negative Test Cases

  Scenario: User does not see an incorrect or partial welcome message
    Given User navigates to the AI Bot chat interface
    Then The welcome message should not display "Goodbye!"
    And The bot identity should not display "I'm a human assistant."
