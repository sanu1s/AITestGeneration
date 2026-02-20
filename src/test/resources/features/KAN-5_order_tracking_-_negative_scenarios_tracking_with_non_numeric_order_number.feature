Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking with non-numeric order number
    Given user is on the order tracking page
    When User enters order number "ABC"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numericasdasdsadaddsa"
