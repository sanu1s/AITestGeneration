Feature: AI Bot Assistant Welcome Messages - Positive Test Cases

  Scenario: Verify agent connection disclaimer message
    Given User navigates to the AI Bot Assistant chat interface
    Then The disclaimer message "If I can't answer your question, I'll connect you with an agent who can." should be displayed
