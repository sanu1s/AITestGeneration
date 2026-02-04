Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for invalid order number "Invalid Order Number"
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
