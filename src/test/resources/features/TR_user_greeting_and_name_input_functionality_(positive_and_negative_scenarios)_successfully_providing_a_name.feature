Feature: User Greeting and Name Input Functionality (Positive and Negative Scenarios)

  Scenario: Successfully providing a name
    Given User navigates to the greeting application
    Then The greeting message should display "I'll be happy to assist you with that! May I have your name please?"
    When User enters name "Alice Wonderland"
    And User clicks the "Submit" button
    Then The acknowledgement message should display "Thank you, Alice Wonderland! How can I help you today?"
