Feature: Support Chat Assistance Prompt - Negative Scenarios

  Scenario: Verify assistance prompt does not appear when chat is closed
    Given User is on the "https://www.example.com/help" page
    When User opens the "Support Chat" widget
    And User closes the "Support Chat" widget
    And User waits for "10" seconds
    Then The chat message area should not display "Are you still needing assistance?"
