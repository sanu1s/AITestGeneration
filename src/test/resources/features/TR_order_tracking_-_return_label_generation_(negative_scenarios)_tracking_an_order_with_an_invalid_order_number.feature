Feature: Order Tracking - Return Label Generation (Negative Scenarios)

  Scenario: Tracking an order with an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID_ORDER_XYZ"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the order number."
