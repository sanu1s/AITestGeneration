Feature: Order Confirmation and Status Verification - Negative Test Cases

  Scenario: Display error for a non-existent order
    Given User is on the order tracking page
    When User enters order number "NONEXISTENT000"
    And User clicks the "Track Order" button
    Then The error message should display "Order NONEXISTENT000 not found."
