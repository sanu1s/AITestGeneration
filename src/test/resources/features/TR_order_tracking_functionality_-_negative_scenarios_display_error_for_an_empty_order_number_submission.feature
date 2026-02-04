Feature: Order Tracking Functionality - Negative Scenarios

  Scenario: Display error for an empty order number submission
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number cannot be empty. Please enter a valid order number."
