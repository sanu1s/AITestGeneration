Feature: Customer Support Wait Time Information - Positive Scenarios

  Scenario: Verify Specific Wait Time Duration in Message
    Given User navigates to the "Support" page
    Then The wait time information message should contain "10-20 minutes"
