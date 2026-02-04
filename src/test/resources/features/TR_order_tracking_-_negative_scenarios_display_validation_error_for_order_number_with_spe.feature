Feature: Order Tracking - Negative Scenarios

  Scenario: Display validation error for order number with special characters
    Given User is on the order tracking page
    When User enters order number "ORD#@!123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
