Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with spaces in input
    Given User is on the order tracking page
    When User enters order number "ORD 12345"
    And User clicks the "Track Order" button
    Then The result message should contain "Invalid order number format."
