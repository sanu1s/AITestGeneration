Feature: Order Tracking - Positive Scenarios

  Scenario: User can track another valid order successfully
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The order status should display "Order Delivered"
