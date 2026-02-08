Feature: Order Tracking Service - Negative Test Cases

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID999"
    And User clicks the track order button
    Then The error message should display "Order not found"
