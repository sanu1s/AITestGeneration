Feature: Order Tracking - Positive Scenarios

  Scenario: Track a valid 10-digit numeric order
    Given User is on the Order Tracking page
    When User enters order number "9876543210"
    And User clicks the "Track Order" button
    Then The order status should be displayed as "The order status Delayed"
