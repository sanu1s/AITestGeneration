Feature: Order Price Adjustment Functionality - Negative Scenarios

  Scenario: Display error for invalid order number
    Given User is on the "order tracking" page
    When User enters order number "INVALID000"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
