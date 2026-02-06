Feature: Price Adjustment Request - Negative Scenarios

  Scenario: Invalid order number provided
    Given User is on the order tracking page
    When User enters order number "INVALID_ORD_000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
