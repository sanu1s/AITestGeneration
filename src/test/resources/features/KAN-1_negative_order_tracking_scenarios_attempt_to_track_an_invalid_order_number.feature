Feature: Negative Order Tracking Scenarios

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page
    When User enters order number "INV99999"
    And User clicks the "Track Order" button
    Then The result message should display "Order not found or invalid"
