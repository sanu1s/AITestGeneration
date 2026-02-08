Feature: Order Tracking Service - Negative Scenarios

  Scenario: Attempt to track an invalid order number
    Given User is on the Order Tracking page
    When User enters order number "INVALID001"
    And User clicks the "Track Order" button
    Then The result message should display "Order not found"
