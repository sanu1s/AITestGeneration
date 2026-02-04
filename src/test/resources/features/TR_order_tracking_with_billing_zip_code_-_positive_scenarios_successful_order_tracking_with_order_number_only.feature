Feature: Order Tracking with Billing Zip Code - Positive Scenarios

  Scenario: Successful Order Tracking with Order Number Only
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD12345 is Shipped"
