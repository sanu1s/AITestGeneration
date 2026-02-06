Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks on "Track Order" button
    Then The result message should display "Order not found"
