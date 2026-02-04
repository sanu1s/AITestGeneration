Feature: Order Cancellation Confirmation - Positive Test Cases

  Scenario: Verify correct confirmation message for another cancellable order ORD987PENDING
    Given User navigates to the order tracking page
    When User enters order number "ORD987PENDING"
    And User clicks the "Track Order" button
    Then The status message result should display "Are you sure it's cancelled?"
