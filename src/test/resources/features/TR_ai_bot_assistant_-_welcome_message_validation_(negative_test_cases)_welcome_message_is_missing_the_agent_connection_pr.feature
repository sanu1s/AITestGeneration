Feature: AI Bot Assistant - Welcome Message Validation (Negative Test Cases)

  Scenario: Welcome message is missing the agent connection promise
    Given User navigates to the AI Bot Assistant page
    Then The welcome message should NOT contain "If I can't answer your question, I'll connect you with an agent who can."
