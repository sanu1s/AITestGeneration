Feature: Order Cancellation Confirmation - Positive Test Cases

  Scenario: Verify correct confirmation message for cancellable order ORD789PENDING
    Given User navigates to the order tracking page
    When User enters order number "ORD789PENDING"
    And User clicks the "Track Order" button
    Then The status message result should display "Are you sure it's cancelled?"
