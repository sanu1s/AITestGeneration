Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Display error for an invalid order number format
    Given user is on the order tracking page
    When User enters order number "INVALID"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid Order Number format. Please try again."
