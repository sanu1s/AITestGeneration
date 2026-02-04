Feature: Customer Support Chat Functionality - Positive Test Cases

  Scenario: Initiate Chat and Verify Agent Connection Message
    Given User is on the customer support page
    When User clicks the "Chat with an Agent" button
    Then The chat window should appear with title "Live Chat Support"
    And The chat status message should display "Connecting you to the next available agent."
