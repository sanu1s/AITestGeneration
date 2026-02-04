Feature: Order Tracking: Replacement Monogram Confirmation - Negative Scenarios

  Scenario: Verify error when replacement order number is invalid
    Given User navigates to the order tracking page
    When User enters order number "INVALID_REP_ORD"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order Number: INVALID_REP_ORD"
