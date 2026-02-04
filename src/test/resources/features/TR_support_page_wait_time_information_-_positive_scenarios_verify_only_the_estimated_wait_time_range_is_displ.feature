Feature: Support Page Wait Time Information - Positive Scenarios

  Scenario: Verify only the estimated wait time range is displayed within the message
    Given User navigates to the "Support" page
    Then The support message area should contain "10-20 minutes"
