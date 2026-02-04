Feature: Order Cancellation Functionality - Positive Test Cases

  Scenario: Successfully cancel a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    And User clicks the "Cancel Order" button
    Then The status message should display "Order ORD12345 has been successfully cancelled."
