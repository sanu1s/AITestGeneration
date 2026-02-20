Feature: Negative Scenarios - Order Tracking with Invalid Inputs

  Scenario: Tracking with order number length less than 2 (single digit)
    Given User is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
