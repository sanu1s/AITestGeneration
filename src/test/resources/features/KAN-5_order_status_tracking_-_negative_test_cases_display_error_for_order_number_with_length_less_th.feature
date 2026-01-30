Feature: Order Status Tracking - Negative Test Cases

  Scenario: Display error for order number with length less than 2 (alphabetic)
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the Track Order button
    Then The error message should display "Invalid Order No"
