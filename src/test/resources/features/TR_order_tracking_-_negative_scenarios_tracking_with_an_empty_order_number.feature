Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking with an empty order number
    Given User is on the order tracking page
    When User clears the order number field
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
