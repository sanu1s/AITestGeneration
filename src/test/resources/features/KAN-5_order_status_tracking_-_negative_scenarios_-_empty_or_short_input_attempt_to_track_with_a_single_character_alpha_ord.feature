Feature: Order Status Tracking - Negative Scenarios - Empty or Short Input

  Scenario: Attempt to track with a single character alpha order number
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks on "Track Order" button
    Then The error message should display "Invalid Order No"
