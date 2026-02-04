Feature: Track Replacement Order - Negative Scenarios

  Scenario: Display error for an invalid replacement order number
    Given User is on the order tracking page
    When User enters order number "INVALID678"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."
