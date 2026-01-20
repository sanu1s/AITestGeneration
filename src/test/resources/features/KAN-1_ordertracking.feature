Feature: OrderTracking

  Scenario: Order Number Exceeds Max Length
    Given User is on the order tracking page
    When User enters order number "ORD12345678901234567890"
    And User clicks the "Track Order" button
    Then An error message should display "Order number is too long."
