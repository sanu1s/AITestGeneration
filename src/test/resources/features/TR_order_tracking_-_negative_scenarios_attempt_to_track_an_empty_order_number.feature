Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track an empty order number
    Given User is on the order tracking page
    When User enters an empty order number
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
