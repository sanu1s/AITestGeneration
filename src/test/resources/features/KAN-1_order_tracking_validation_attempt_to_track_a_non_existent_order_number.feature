Feature: Order Tracking Validation

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXIST"
    And User clicks the "Track Order" button
    Then The result message should display "Order not found."
