Feature: OrderTracking_NegativeScenarios

  Scenario: Track with a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXIST"
    And User clicks the "Track Order" button
    Then An error message "Order not found." should be displayed
    And The URL should remain "http://127.0.0.1:8000/order/tracking"
