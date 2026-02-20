Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking with order number less than 2 digits
    Given user is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
