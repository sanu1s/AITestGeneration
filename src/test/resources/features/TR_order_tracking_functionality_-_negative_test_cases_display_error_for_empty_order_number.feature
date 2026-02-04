Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for empty order number
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
    And User should be on the URL "https://example.com/track-order"
