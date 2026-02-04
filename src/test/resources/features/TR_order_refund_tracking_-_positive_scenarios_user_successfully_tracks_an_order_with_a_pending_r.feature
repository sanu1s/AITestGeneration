Feature: Order Refund Tracking - Positive Scenarios

  Scenario: User successfully tracks an order with a pending refund status
    Given User is on the order tracking page
    When User enters order number "PENDINGREFUND456"
    And User clicks the "Track Order" button
    Then The order status should display "Refund initiated. Not yet dropped into your account."
