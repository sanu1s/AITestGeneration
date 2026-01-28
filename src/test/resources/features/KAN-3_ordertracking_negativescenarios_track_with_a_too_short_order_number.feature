Feature: OrderTracking_NegativeScenarios

  Scenario: Track with a too short order number
    Given User is on the order tracking page
    When User enters order number "ORD1"
    And User clicks the "Track Order" button
    Then An error message "Order number must be at least 5 characters." should be displayed
    And The URL should remain "http://127.0.0.1:8000/order/tracking"
