Feature: Order Tracking: Replacement Monogram Confirmation - Negative Scenarios

  Scenario: Verify error when replacement order has different monogram information
    Given User navigates to the order tracking page
    When User enters order number "REP_MONO_DIFF_1"
    And User clicks the Track Order button
    Then The error message should display "Replacement order REP_MONO_DIFF_1 has different monogram information."
