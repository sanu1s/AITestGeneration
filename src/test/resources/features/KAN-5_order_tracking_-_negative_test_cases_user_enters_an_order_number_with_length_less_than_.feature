Feature: Order Tracking - Negative Test Cases

  Scenario: User enters an order number with length less than 2 (alphabetic)
    Given User navigates to the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
