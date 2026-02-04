Feature: Order Cancellation Status Verification - Negative Test Cases

  Scenario: Attempt to track an order with an invalid format order number.
    Given User is on the order tracking page
    When User enters order number "INV#ORD#"
    And User clicks the "Track Order" button
    Then The error message should display "Invalid order number format. Please use alphanumeric characters only."
