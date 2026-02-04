Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: Successfully track another valid order with delivery status
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The order status should display "Here's the latest update on your order: Your order ORD23456 has been delivered."
