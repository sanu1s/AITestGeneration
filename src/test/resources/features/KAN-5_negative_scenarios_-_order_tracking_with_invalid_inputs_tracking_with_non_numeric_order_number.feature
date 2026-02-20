Feature: Negative Scenarios - Order Tracking with Invalid Inputs

  Scenario: Tracking with non-numeric order number
    Given User is on the order tracking page
    When User enters order number "ABC"
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numericasdasdsadaddsa"
