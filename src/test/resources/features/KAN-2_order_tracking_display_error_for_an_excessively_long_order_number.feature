Feature: Order Tracking

  Scenario: Display error for an excessively long order number
    Given User is on the order tracking page
    When User enters order number "ORD123456789012345678901234567890"
    And User clicks the "Track Order" button
    Then The result message should display "Order number is too long."
