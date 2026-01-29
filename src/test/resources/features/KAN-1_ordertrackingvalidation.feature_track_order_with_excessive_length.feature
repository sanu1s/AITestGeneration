Feature: OrderTrackingValidation.feature

  Scenario: Track order with excessive length
    Given User is on the order tracking page
    When User enters order number "ORD12345678901234567890"
    And User clicks the "Track Order" button
    Then An error message "Order number too long." should be displayed
