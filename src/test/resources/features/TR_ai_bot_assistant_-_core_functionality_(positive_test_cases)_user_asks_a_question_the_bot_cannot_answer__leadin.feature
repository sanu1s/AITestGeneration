Feature: AI Bot Assistant - Core Functionality (Positive Test Cases)

  Scenario: User asks a question the bot cannot answer, leading to agent connection offer
    Given User navigates to the AI Bot Assistant page
    And User enters question "What is the meaning of life?" into the chat input
    When User clicks the "Send" button
    Then The bot response should display "If I can't answer your question, I'll connect you with an agent who can."
    And A "Connect to Agent" button should be visible
