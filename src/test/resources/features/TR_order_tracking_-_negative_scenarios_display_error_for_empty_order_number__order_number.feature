Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for empty order number "Order number cannot be empty"
    Given User is on the order tracking page
    When User leaves the order number field empty
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
