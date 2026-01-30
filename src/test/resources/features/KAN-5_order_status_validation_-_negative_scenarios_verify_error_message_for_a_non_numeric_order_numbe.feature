Feature: Order Status Validation - Negative Scenarios

  Scenario: Verify error message for a non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ORD123"
    And User clicks on "Track Order" button
    Then The error message should display "Order number must be numeric"
