Feature: AI Chatbot Welcome Message Validation (Positive)

  Scenario: Verify the AI Bot's agent connection fallback mechanism
    Given User navigates to the AI Chatbot interface
    Then The AI bot's initial message should contain "If I can't answer your question, I'll connect you with an agent who can."
