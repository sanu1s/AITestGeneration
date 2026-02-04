Feature: Email Input Functionality - Positive Test Cases

  Scenario: User successfully enters another valid email address
    Given User is on the email input page
    When User enters email "another.user@domain.org"
    And User clicks the "Submit Email" button
    Then The success message should display "Email 'another.user@domain.org' submitted successfully."
