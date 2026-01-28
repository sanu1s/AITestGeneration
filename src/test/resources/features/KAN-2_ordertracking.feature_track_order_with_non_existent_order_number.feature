Feature: OrderTracking.feature

  Scenario: Track order with non-existent order number
    Given User is on the order tracking page
    When User enters order number "ORD99999"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORD99999 not found."
