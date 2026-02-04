Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123" and billing zip code "90210"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number. Please try again."
