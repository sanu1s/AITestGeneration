Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Verify Error for Empty Order Number
    Given User is on the order tracking page "https://example.com/track"
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
