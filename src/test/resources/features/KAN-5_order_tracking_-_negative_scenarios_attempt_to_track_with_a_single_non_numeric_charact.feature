Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with a single non-numeric character order number
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
