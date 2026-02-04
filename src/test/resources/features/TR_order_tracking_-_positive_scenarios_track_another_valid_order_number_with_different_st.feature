Feature: Order Tracking - Positive Scenarios

  Scenario: Track another valid order number with different status
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The order status should display "Order ORD23456 is In Transit"
