Feature: Order Tracking Service - Negative Scenarios

  Scenario: Attempt to track with an invalid order number
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User enters order number "INV789"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order Number"
