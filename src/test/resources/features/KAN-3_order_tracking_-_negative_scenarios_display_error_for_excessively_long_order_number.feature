Feature: Order Tracking - Negative Scenarios

  Scenario: Display error for excessively long order number
    Given User is on the order tracking page
    When User enters order number "ORD12345678901234567890"
    And User clicks the "Track Order" button
    Then The result message should display "Order number is too long."
