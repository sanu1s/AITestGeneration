Feature: Order Tracking - Positive Scenarios

  Scenario: Successful tracking of another valid order number
    Given User is on the order tracking page
    When User enters order number "987654321"
    And User clicks the "Track Order" button
    Then The order status should display "Order Delivered"
