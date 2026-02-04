Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track another order with a different valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 is Delivered"
