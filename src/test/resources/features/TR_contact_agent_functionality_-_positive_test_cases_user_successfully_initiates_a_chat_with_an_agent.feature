Feature: Contact Agent Functionality - Positive Test Cases

  Scenario: User successfully initiates a chat with an agent
    Given User is on the "https://www.example.com" home page
    When User clicks on "Speak to agent" button
    Then A chat widget should appear
    And The chat widget should display a welcome message "Hello! How can I help you today?"
