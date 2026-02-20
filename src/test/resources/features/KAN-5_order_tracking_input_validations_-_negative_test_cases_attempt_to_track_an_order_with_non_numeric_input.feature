Feature: Order Tracking Input Validations - Negative Test Cases

  Scenario: Attempt to track an order with non-numeric input
    Given User is on the order tracking page
    When User enters order number "ABC"
    And User clicks the "Track Order" button
    Then The status message should display "Order number must be numeric"
