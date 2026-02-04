Feature: Order Cancellation Functionality - Positive and Negative Scenarios

  Scenario: Attempt to cancel an order with an empty order number
    Given User is on the "Order Tracking" page at "https://example.com/track"
    When User enters an empty order number
    And User clicks "Track Order" button
    Then The error message should display "Order number cannot be empty."
