Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Successfully track an order with Pending status
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is Pending"
