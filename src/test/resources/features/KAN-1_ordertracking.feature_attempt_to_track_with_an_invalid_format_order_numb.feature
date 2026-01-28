Feature: OrderTracking.feature

  Scenario: Attempt to track with an invalid format order number
    Given User is on the order tracking page
    When User enters order number "INVALID_FORMAT_123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format."
