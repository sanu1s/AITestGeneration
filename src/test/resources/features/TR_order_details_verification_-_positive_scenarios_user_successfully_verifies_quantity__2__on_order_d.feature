Feature: Order Details Verification - Positive Scenarios

  Scenario: User successfully verifies quantity '2' on order details
    Given User is on the order tracking page
    When User enters order number "ORD-QTY-2-ABC"
    And User clicks the "Track Order" button
    Then The status message should display "Quantity: 2"
