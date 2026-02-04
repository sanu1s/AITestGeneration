Feature: Order Tracking Functionality - Positive Test Cases

  Scenario: User successfully tracks another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order 'ORD67890' has been delivered."
