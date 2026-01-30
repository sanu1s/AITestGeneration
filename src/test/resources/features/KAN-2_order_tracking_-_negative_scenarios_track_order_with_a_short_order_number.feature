Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with a short order number
    Given User is on the order tracking page
    When User enters order number "ORD1"
    And User clicks the "Track Order" button
    Then The result should display "Order number must be at least 5 characters long."
