Feature: OrderTrackingValidation.feature

  Scenario: Track order with a non-existent order number
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT999"
    And User clicks the "Track Order" button
    Then An error message "Order not found." should be displayed
