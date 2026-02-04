Feature: Order Tracking System - Placeholder Negative Test Cases

  Scenario: Display error for non-existent order - Placeholder
    Given User is on the order tracking page
    When User enters order number "PLACEHOLDER_INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found - Placeholder"
