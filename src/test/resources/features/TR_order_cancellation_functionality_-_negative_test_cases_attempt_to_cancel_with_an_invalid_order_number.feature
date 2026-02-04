Feature: Order Cancellation Functionality - Negative Test Cases

  Scenario: Attempt to cancel with an invalid order number
    Given User is on the "Cancel Order" page
    When User enters order number "INVALID007" for cancellation
    And User clicks the "Cancel Order" button
    Then The error message should display "Invalid Order Number. Please check and try again."
