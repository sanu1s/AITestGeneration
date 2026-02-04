Feature: AI Bot Assistant Functionality - Negative Scenarios

  Scenario: Bot Cannot Answer and Connects to an Agent for Unanswerable Query
    Given User is on the AI Bot Assistant page
    When User enters question "What is the meaning of life?"
    And User clicks the "Ask" button
    Then The bot response should display "I cannot answer your question."
    And The agent connection message should display "Connecting you with an agent."
