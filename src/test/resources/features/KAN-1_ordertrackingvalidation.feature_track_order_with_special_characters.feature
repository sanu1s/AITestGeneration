Feature: OrderTrackingValidation.feature

  Scenario: Track order with special characters
    Given User is on the order tracking page
    When User enters order number "ORD!@#$"
    And User clicks the "Track Order" button
    Then An error message "Invalid order number format." should be displayed
