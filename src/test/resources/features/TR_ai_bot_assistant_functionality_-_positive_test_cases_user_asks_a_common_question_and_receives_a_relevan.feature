Feature: AI Bot Assistant Functionality - Positive Test Cases

  Scenario: User asks a common question and receives a relevant answer
    Given User navigates to the "chat bot" page
    When User enters the question "Tell me about your capabilities"
    And User clicks the "Send" button
    Then The chat bot response should display "I can answer your questions and connect you to a human agent if needed."
