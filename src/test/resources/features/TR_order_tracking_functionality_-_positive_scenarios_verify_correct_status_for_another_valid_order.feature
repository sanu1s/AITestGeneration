Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Verify correct status for another valid order
    Given User is on the order tracking page
    When User enters order number "ORD789012"
    And User clicks the "Track Order" button
    Then The order status should display "Order in transit, expected delivery 2023-11-15"
