Feature: Order_Tracking_Negative_Scenarios_Invalid_Inputs

  Scenario: Verify error for another non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ORD-XYZ"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"
