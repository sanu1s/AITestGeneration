Feature: Order Tracking

  Scenario: Attempt to track an order that does not exist
    Given User is on the order tracking page
    When User enters order number "ORD99999"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."
