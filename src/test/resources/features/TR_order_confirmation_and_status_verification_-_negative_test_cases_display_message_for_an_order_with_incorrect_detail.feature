Feature: Order Confirmation and Status Verification - Negative Test Cases

  Scenario: Display message for an order with incorrect details ("not written correctly")
    Given User is on the order tracking page
    When User enters order number "INCORRECT789"
    And User clicks the "Track Order" button
    Then The status message should display "Order INCORRECT789: Details need review, contact support."
