Feature: Order Status Tracking - Negative Scenarios

  Scenario: Attempt to track with an order number length less than 2 (zero)
    Given User is on the order tracking page
    When User enters order number "0"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
