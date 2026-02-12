Feature: Order Status Tracking - Negative Test Cases

  Scenario: Attempt to track with a single character numeric order number
    Given User is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
