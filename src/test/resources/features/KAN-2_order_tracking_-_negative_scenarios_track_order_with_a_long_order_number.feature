Feature: Order Tracking - Negative Scenarios

  Scenario: Track order with a long order number
    Given User is on the order tracking page
    When User enters order number "ORD123456789012345678901234567890"
    And User clicks the "Track Order" button
    Then The result should display "Order number cannot exceed 30 characters."
