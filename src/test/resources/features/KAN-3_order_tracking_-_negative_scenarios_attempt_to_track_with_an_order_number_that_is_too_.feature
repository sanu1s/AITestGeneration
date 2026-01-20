Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an order number that is too long
    Given User is on the order tracking page
    When User enters order number "ORD12345678901234567890"
    And User clicks the "Track Order" button
    Then The page URL should be "http://127.0.0.1:8000/order/tracking"
    And The result message should display "Order number must not exceed 20 characters."
