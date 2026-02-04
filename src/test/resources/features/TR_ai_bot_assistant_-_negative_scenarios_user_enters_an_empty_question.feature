Feature: AI Bot Assistant - Negative Scenarios

  Scenario: User enters an empty question
    Given User navigates to the AI Bot Assistant page
    When User enters question ""
    And User clicks the "Send" button
    Then The error message should display "Please enter a question."
