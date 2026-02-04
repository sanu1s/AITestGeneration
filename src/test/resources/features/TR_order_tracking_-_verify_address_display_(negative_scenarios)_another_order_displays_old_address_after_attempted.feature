Feature: Order Tracking - Verify Address Display (Negative Scenarios)

  Scenario: Another order displays old address after attempted update
    Given User is on the order tracking page
    When User enters order number "ORD23456"
    And User clicks the "Track Order" button
    Then The order details should include "Old Address: 456 Oak Ave"
