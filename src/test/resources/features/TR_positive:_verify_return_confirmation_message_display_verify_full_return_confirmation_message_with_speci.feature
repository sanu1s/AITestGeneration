Feature: Positive: Verify Return Confirmation Message Display

  Scenario: Verify full return confirmation message with specific return number 9876543210
    Given User is on the return confirmation page
    Then The status message should display "I have completed this for you. The labels should arrive to your email address shortly. Here is you return number: 9876543210."
