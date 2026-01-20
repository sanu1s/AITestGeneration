Feature: OrderTracking.feature

  Scenario: Display error for excessively long order number
    Given User is on the order tracking page
    When User enters order number "ORD123456789012345678901234567890"
    And User clicks the "Track Order" button
    Then An error message "Order number is too long" should be displayed
