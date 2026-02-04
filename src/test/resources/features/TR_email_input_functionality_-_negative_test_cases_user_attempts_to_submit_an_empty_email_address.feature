Feature: Email Input Functionality - Negative Test Cases

  Scenario: User attempts to submit an empty email address
    Given User is on the email input page
    When User enters email ""
    And User clicks the "Submit Email" button
    Then The error message should display "Email address cannot be empty."
