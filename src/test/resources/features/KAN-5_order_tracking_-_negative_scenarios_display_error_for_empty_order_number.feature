Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for empty order number
    Given I am on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric"
