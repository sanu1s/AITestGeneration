Feature: AI Bot Assistant Functionality - Negative Test Cases

  Scenario: User submits an empty question, bot should show an error or prompt for input
    Given User navigates to the "chat bot" page
    When User enters the question ""
    And User clicks the "Send" button
    Then The error message should display "Please enter a question."
    And The chat bot response should not contain "I'm sorry"
