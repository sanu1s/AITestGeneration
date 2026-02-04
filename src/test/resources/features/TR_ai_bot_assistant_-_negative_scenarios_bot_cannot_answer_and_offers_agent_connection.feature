Feature: AI Bot Assistant - Negative Scenarios

  Scenario: Bot cannot answer and offers agent connection
    Given User navigates to the AI Bot Assistant page
    When User enters question "How do I build a rocket?"
    And User clicks the "Send" button
    Then The bot response should display "I cannot answer that question. Would you like to connect with an agent?"
