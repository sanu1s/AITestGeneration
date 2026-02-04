Feature: System Message Verification - Positive Scenarios

  Scenario: Verify 'Are you there?' message when tracking without input
    Given User navigates to the order tracking page
    When User clicks the "Track Order" button without entering an order number
    Then The error message should display "Are you there?"
