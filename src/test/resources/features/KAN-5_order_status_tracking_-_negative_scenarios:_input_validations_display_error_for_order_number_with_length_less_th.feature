Feature: Order Status Tracking - Negative Scenarios: Input Validations

  Scenario: Display error for order number with length less than 2
    Given User is on the order tracking page
    When User enters order number "1"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order No"
