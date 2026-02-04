Feature: Order Refund Tracking - Positive Scenarios

  Scenario: User successfully tracks an order that has been refunded
    Given User is on the order tracking page
    When User enters order number "REFUNDED123"
    And User clicks the "Track Order" button
    Then The order status should display "Order REFUNDED and processed. Amount should reflect in your account soon."
