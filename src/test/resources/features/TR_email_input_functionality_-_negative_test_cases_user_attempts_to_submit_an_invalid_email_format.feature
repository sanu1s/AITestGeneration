Feature: Email Input Functionality - Negative Test Cases

  Scenario: User attempts to submit an invalid email format
    Given User is on the email input page
    When User enters email "invalid-email"
    And User clicks the "Submit Email" button
    Then The error message should display "Please enter a valid email address."
