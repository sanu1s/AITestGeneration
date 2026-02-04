Feature: Verify Status Message Display - Negative Scenarios

  Scenario: Message 'I'm still here' is not displayed on a page where it is not expected
    Given User navigates to the "about" page
    Then The status message "I'm still here" should not be displayed
