Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track a valid order - Shipped
    Given User is on the order tracking page
    When User enters order number "ORD1234"
    And User clicks the "Track Order" button
    Then The order status message should display "Order ORD1234 is Shipped."
