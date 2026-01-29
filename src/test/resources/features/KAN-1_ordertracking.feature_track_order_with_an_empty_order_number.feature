Feature: OrderTracking.feature

  Scenario: Track order with an empty order number
    Given User is on the order tracking page
    When User enters an empty order number
    And User clicks the "Track Order" button
    Then The result should display error message "Order number cannot be empty."
