Feature: OrderTracking_NegativeScenarios

  Scenario: Track with a too long order number
    Given User is on the order tracking page
    When User enters order number "ORD1234567890"
    And User clicks the "Track Order" button
    Then An error message "Order number cannot exceed 10 characters." should be displayed
    And The URL should remain "http://127.0.0.1:8000/order/tracking"
