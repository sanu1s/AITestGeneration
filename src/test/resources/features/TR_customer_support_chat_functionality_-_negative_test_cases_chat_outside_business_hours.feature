Feature: Customer Support Chat Functionality - Negative Test Cases

  Scenario: Chat Outside Business Hours
    Given User is on the customer support page
    When User clicks the "Chat with an Agent" button
    Then The chat error message should display "Our chat support is available from 9 AM to 5 PM EST."
