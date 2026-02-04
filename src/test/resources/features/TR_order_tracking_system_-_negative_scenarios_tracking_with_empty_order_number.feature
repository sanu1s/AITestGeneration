Feature: Order Tracking System - Negative Scenarios

  Scenario: Tracking with Empty Order Number
    Given User is on the Order Tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
    And The URL should remain "https://example.com/track"
