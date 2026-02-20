Feature: Order Tracking - Negative Scenarios

  Scenario: Tracking with empty order number
    Given user is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The result message should display "Order number must be numeric"
