Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXIST"
    And User clicks the "Track Order" button
    Then The page URL should be "http://127.0.0.1:8000/order/tracking"
    And The result message should display "Order 'NONEXIST' not found."
