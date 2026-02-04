Feature: User Greeting and Name Input Functionality (Positive and Negative Scenarios)

  Scenario: Attempting to submit an empty name
    Given User navigates to the greeting application
    Then The greeting message should display "I'll be happy to assist you with that! May I have your name please?"
    When User enters name ""
    And User clicks the "Submit" button
    Then The error message should display "Please enter your name."
