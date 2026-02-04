Feature: Order Tracking for Defective Item Inquiry - Negative Scenarios

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
    And The current URL should be "https://example.com/track"
