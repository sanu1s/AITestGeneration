Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 is Delivered on 2024-01-15"
