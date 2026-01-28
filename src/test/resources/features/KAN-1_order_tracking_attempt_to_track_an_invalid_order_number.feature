Feature: Order Tracking

  Scenario: Attempt to track an invalid order number
    Given User is on the order tracking page
    When User enters order number "XYZ98765"
    And User clicks the "Track Order" button
    Then An error message should be displayed as "Order not found"
