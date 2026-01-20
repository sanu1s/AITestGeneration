Feature: Order Tracking With Invalid Inputs

  Scenario: Track with a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT1"
    And User clicks the "Track Order" button
    Then The result message should display "Order NONEXISTENT1 not found."
