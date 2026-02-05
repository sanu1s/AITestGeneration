Feature: Order Tracking Service - Negative Test Cases

  Scenario: Display error when order number field is empty
    Given User is on the order tracking page "http://127.0.0.1:8088/order/tracking"
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
