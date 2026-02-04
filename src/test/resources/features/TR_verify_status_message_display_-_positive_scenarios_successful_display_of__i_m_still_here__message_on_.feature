Feature: Verify Status Message Display - Positive Scenarios

  Scenario: Successful display of 'I'm still here' message on initial load
    Given User navigates to the status display page
    Then The status message should display "I'm still here"
