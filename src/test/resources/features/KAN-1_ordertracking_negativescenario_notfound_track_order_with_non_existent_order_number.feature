Feature: OrderTracking_NegativeScenario_NotFound

  Scenario: Track order with non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXIST1"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."
