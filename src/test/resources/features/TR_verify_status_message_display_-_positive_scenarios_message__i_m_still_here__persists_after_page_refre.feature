Feature: Verify Status Message Display - Positive Scenarios

  Scenario: Message 'I'm still here' persists after page refresh
    Given User navigates to the status display page
    When User refreshes the page
    Then The status message should display "I'm still here"
