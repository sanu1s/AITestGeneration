Feature: AI Bot Assistant Functionality - Negative Test Cases

  Scenario: User asks an unknown question, bot indicates it cannot answer and offers agent connection
    Given User navigates to the "chat bot" page
    When User enters the question "What is the capital of Mars?"
    And User clicks the "Send" button
    Then The chat bot response should display "I'm sorry, I cannot answer that question. Would you like to connect with an agent?"
    And The "Connect to Agent" button should be visible
