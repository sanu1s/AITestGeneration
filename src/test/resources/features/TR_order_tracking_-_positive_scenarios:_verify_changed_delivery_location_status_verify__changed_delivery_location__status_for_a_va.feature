Feature: Order Tracking - Positive Scenarios: Verify Changed Delivery Location Status

  Scenario: Verify 'Changed delivery location' status for a valid order
    Given User is on the order tracking page
    When User enters order number "ORD001"
    And User clicks "Track Order"
    Then The status message should display "Changed delivery location"
