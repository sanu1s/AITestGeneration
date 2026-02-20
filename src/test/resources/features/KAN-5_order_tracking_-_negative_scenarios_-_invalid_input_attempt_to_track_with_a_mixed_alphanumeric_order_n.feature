Feature: Order Tracking - Negative Scenarios - Invalid Input

  Scenario: Attempt to track with a mixed alphanumeric order number
    Given User is on the order tracking page
    When User enters order number "12A3"
    And User clicks the Track Order button
    Then The error message should display "Order number must be numericasdasdsadaddsa"
