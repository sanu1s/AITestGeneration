Feature: Order Tracking - Negative Scenarios - Invalid Input

  Scenario: Tracking with a non-numeric order number (alphanumeric)
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User enters order number "123AB"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"
