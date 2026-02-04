Feature: Order Tracking - Negative Scenarios: Verify Changed Delivery Location Status Errors

  Scenario: Verify error message for an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks "Track Order"
    Then The error message should display "Invalid Order Number"
