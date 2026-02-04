Feature: Email Input Functionality - Positive Test Cases

  Scenario: User successfully enters a valid email address
    Given User is on the email input page
    When User enters email "test@example.com"
    And User clicks the "Submit Email" button
    Then The success message should display "Email 'test@example.com' submitted successfully."
