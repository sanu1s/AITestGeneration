Feature: Order Tracking Input Validation

  Scenario: Display error for too long order number
    Given User is on the order tracking page
    When User enters order number "ORD123456789"
    And User clicks the "Track Order" button
    Then The error message should display "Order number is too long."
