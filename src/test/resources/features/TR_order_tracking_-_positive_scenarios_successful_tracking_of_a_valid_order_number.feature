Feature: Order Tracking - Positive Scenarios

  Scenario: Successful tracking of a valid order number
    Given User is on the order tracking page
    When User enters order number "20770405"
    And User clicks the "Track Order" button
    Then The order status should display "Order Shipped"
