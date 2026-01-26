Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with an invalid format (too short)
    Given User is on the order tracking page
    When User enters order number "ORD123"
    And User clicks the "Track Order" button
    Then The result message should contain "Invalid order number format."
