Feature: Order_Tracking_Negative_Scenarios_Invalid_Inputs

  Scenario: Verify error for non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ABC12"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"
