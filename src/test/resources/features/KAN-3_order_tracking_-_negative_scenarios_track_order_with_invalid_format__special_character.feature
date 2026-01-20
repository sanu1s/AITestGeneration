Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with invalid format (special characters)
    Given User is on the order tracking page
    When User enters order number "ORD!@#$"
    And User clicks the "Track Order" button
    Then The result message should display "Invalid order number format."
