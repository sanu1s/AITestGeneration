Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for order number less than 2 characters
    Given I am on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
