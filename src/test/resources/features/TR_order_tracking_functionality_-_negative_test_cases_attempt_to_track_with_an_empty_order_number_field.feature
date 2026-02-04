Feature: Order Tracking Functionality - Negative Test Cases

  Scenario: Attempt to track with an empty order number field
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty"
