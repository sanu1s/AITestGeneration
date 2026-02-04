Feature: System Message Verification - Positive Scenarios

  Scenario: Verify 'Are you there?' message on initial page load
    Given User navigates to the order tracking page
    Then The status message should display "Are you there?"
