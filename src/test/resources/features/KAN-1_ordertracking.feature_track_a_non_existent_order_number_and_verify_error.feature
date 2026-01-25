Feature: OrderTracking.feature

  Scenario: Track a non-existent order number and verify error message
    Given User is on the order tracking page
    When User enters order number "ORD99999"
    And Clicks the "Track Order" button
    Then The result should display error message "Order not found."
