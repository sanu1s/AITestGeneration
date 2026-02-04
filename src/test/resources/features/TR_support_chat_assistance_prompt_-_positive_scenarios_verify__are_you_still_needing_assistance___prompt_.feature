Feature: Support Chat Assistance Prompt - Positive Scenarios

  Scenario: Verify 'Are you still needing assistance?' prompt after initial query and inactivity
    Given User is on the "https://www.example.com/help" page
    When User opens the "Support Chat" widget
    And User types "I need help with my account" into the chat input
    And User presses "Enter"
    And User waits for "8" seconds without further interaction
    Then The chat message area should display "Are you still needing assistance?"
