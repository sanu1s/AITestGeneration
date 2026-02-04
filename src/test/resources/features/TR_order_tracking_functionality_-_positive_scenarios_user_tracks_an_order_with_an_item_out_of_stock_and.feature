Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: User tracks an order with an item out of stock and checks its restock information
    Given User is on the order tracking page
    When User enters order number "ORD98765"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD98765 is delayed. Item 'Bags' is currently out of stock. Estimated restock: 2 weeks."
