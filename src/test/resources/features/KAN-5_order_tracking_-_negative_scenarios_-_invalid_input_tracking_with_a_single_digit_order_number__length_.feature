Feature: Order Tracking - Negative Scenarios - Invalid Input

  Scenario: Tracking with a single-digit order number (length less than 2)
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
