Feature: Order Tracking - Negative Scenarios for Estimated Delivery Date

  Scenario: User enters an invalid order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
