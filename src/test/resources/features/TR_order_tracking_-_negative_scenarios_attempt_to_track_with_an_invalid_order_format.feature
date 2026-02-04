Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with an invalid order format
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order Number format. Please try again."
