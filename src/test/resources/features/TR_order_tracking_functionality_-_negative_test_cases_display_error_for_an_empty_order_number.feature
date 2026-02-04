Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Display error for an empty order number
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
