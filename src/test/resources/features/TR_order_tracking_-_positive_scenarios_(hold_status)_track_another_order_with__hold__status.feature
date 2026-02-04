Feature: Order Tracking - Positive Scenarios (Hold Status)

  Scenario: Track another order with 'Hold' status
    Given User is on the order tracking page
    When User enters order number "ORD_HOLD_456"
    And User clicks the "Track Order" button
    Then The order status should display "Your order ORD_HOLD_456 is currently on Hold."
