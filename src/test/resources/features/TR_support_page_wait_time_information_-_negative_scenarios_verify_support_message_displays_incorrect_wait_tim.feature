Feature: Support Page Wait Time Information - Negative Scenarios

  Scenario: Verify support message displays incorrect wait time
    Given User navigates to the "Support" page
    Then The support message area should not contain "30-40 minutes"
