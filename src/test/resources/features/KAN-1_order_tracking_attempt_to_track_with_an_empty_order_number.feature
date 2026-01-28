Feature: Order Tracking

  Scenario: Attempt to track with an empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then An error message should be displayed as "Order number is required"
