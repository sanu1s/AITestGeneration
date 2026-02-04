Feature: Order Tracking System - Negative Test Cases

  Scenario: Display error for an unknown order number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD99999"
    And User clicks the "Track Order" button
    Then The error message should display "Order ORD99999 not found."
