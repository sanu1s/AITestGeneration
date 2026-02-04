Feature: Verify Contact Support Wait Time Message - Negative Scenarios

  Scenario: Wait Time Message Does Not Display Incorrect Volume Status
    Given User navigates to the "Support" page
    When User clicks the "Contact Representative" button
    Then The wait time message should not contain "low volumes"
