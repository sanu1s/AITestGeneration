Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track an order with Delivered status
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD67890 has been Delivered"
