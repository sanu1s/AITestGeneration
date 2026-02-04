Feature: Order Tracking - Negative Scenarios

  Scenario: User attempts to track with an invalid order number
    Given User is on the order tracking page "http://localhost:8080/track"
    When User enters order number "INVALID_PILLOW_789"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please verify the order number."
