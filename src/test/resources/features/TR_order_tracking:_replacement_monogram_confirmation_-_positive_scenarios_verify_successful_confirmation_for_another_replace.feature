Feature: Order Tracking: Replacement Monogram Confirmation - Positive Scenarios

  Scenario: Verify successful confirmation for another replacement order with same monogram
    Given User navigates to the order tracking page
    When User enters order number "REP_MONO_OK_2"
    And User clicks the Track Order button
    Then The status message should display "Replacement order REP_MONO_OK_2 will have the same monogram information."
