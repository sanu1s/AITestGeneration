Feature: Order Status Tracking - Negative Test Cases

  Scenario: Attempt to track with another order number less than 2 digits
    Given User is on the Order Tracking page
    When User enters order number "0"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
