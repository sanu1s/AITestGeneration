Feature: AI Bot Assistant - Core Functionality (Positive Test Cases)

  Scenario: User asks a question the bot can answer about its identity
    Given User navigates to the AI Bot Assistant page
    And User enters question "Who are you?" into the chat input
    When User clicks the "Send" button
    Then The bot response should display "I am your AI Bot Assistant."
