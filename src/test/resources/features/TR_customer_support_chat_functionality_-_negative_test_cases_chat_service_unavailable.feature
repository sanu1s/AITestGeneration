Feature: Customer Support Chat Functionality - Negative Test Cases

  Scenario: Chat Service Unavailable
    Given User is on the customer support page
    When User clicks the "Chat with an Agent" button
    Then The chat error message should display "Chat service is currently unavailable. Please try again later."
