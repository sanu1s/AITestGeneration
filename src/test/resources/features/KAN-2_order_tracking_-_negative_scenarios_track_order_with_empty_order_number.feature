Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with empty order number
    Given User is on the order tracking page
    When User enters order number ""
    And User clicks the "Track Order" button
    Then The result should display "Order number cannot be empty."
