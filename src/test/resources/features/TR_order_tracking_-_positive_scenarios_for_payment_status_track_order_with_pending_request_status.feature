Feature: Order Tracking - Positive Scenarios for Payment Status

  Scenario: Track order with Pending Request Status
    Given User is on the order tracking page
    When User enters order number "ORD_PENDING_123"
    And User clicks the "Track Order" button
    Then The order status should display "Payment request pending on your account."
