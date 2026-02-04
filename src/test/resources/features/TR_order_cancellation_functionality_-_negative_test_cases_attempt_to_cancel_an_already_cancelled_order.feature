Feature: Order Cancellation Functionality - Negative Test Cases

  Scenario: Attempt to cancel an already cancelled order
    Given User is on the "Cancel Order" page
    When User enters order number "CANCELLED111" for cancellation
    And User clicks the "Cancel Order" button
    Then The error message should display "Order CANCELLED111 is already cancelled."
