Feature: Order Tracking System - Negative Scenarios

  Scenario: Display error for invalid order number
    Given User is on the Order Tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order 'INVALID123' not found."
