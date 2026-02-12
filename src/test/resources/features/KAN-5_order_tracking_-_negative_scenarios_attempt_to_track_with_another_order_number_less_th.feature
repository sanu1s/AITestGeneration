Feature: Order Tracking - Negative Scenarios

  Scenario: Attempt to track with another order number less than 2 digits
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
