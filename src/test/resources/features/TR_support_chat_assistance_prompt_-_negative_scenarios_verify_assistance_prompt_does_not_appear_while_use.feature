Feature: Support Chat Assistance Prompt - Negative Scenarios

  Scenario: Verify assistance prompt does not appear while user is actively typing
    Given User is on the "https://www.example.com/help" page
    When User opens the "Support Chat" widget
    And User types "I am typing a long message here" into the chat input
    And User waits for "5" seconds
    Then The chat message area should not display "Are you still needing assistance?"
