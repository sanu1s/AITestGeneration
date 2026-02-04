Feature: Chatbot Welcome Message Display (Positive Test Cases)

  Scenario: Verify Chatbot displays the exact welcome message on initial load
    Given User navigates to the chatbot interface
    Then The chat welcome message should display "Welcome! I'm your AI Bot Assistant. If I can't answer your question, I'll connect you with an agent who can."
