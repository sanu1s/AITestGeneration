Feature: Order Tracking Service - Negative Test Cases

  Scenario: Attempt to track an invalid order number
    Given User is on the Order Tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The result message should display "Order not found"
