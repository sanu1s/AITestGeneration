Feature: Order Tracking System - Negative Scenarios

  Scenario: Attempt to track order with an empty order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
