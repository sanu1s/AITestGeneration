Feature: Order Tracking - Validate Negative Scenarios for Invalid Input

  Scenario: Display error for order number with length less than 2
    Given User is on the Order Tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid Order No"
