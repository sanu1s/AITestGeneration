Feature: Order Tracking Validations

  Scenario: Track an order with non-numeric characters
    Given User is on the order tracking page
    When User enters order number "ABCDEFGHIJKL"
    And User clicks the "Track Order" button
    Then The error message should display "Order number must be numeric."
