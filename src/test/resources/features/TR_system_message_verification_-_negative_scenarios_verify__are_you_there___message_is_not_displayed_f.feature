Feature: System Message Verification - Negative Scenarios

  Scenario: Verify 'Are you there?' message is not displayed for an invalid order
    Given User navigates to the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should not display "Are you there?"
