Feature: Support Page Wait Time Information - Negative Scenarios

  Scenario: Verify support message is not displayed when expected
    Given User navigates to the "Support" page
    Then The support message area should not be visible
