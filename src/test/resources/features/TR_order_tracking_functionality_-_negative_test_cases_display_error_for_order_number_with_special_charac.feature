Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for order number with special characters
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD#@!123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Only alphanumeric characters allowed."
