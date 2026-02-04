Feature: Order Cancellation - Invalid Order Scenarios (Negative Test Cases)

  Scenario: User enters a non-existent order number
    Given User is on the order processing page
    When User enters order number "NONEXISTENT123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the number and try again."
