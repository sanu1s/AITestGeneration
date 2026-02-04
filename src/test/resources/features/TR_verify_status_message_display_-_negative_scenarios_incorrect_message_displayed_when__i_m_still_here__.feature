Feature: Verify Status Message Display - Negative Scenarios

  Scenario: Incorrect message displayed when 'I'm still here' is expected
    Given User navigates to the status display page
    Then The status message should not display "I am away"
