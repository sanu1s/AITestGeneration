Feature: Agent Price Adjustment - Negative Scenarios

  Scenario: Agent attempts to track with an empty order number
    Given Agent is on the order tracking page
    When Agent leaves the order number field empty
    And Agent clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty."
