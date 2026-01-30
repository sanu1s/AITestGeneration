Feature: Order Status Tracking - Negative Scenarios: Input Validation

  Scenario: Attempt to track with order number length less than 2 (single character)
    Given User is on the order tracking page
    When User enters order number "A"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
