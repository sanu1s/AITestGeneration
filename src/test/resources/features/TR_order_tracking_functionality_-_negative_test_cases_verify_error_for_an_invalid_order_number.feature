Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Verify Error for an Invalid Order Number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
