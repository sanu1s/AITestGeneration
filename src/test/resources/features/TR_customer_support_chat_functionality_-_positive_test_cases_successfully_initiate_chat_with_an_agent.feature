Feature: Customer Support Chat Functionality - Positive Test Cases

  Scenario: Successfully Initiate Chat with an Agent
    Given User is on the customer support page
    When User clicks the "Chat with an Agent" button
    Then The chat window should appear with title "Chat with Support"
    And The chat status message should display "Please wait while we connect you to an agent."
