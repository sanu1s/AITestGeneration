Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an order number containing special characters
    Given User is on the order tracking page
    When User enters order number "ORD12#$"
    And User clicks the "Track Order" button
    Then An error message "Invalid order number format." should be displayed
    And The URL should be "http://127.0.0.1:8000/order/tracking"
