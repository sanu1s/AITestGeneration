Feature: Order Tracking System - Negative Scenarios

  Scenario: Tracking with an Order Number Containing Special Characters
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD#@!$"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
