Feature: Order Tracking Service - Negative Scenarios

  Scenario: Attempt to track with an empty order number
    Given User is on the Order Tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The result message should display "Order number cannot be empty"
