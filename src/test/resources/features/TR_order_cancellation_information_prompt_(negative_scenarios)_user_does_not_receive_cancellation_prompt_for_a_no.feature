Feature: Order Cancellation Information Prompt (Negative Scenarios)

  Scenario: User does not receive cancellation prompt for a non-cancellable order
    Given User is on the order tracking page
    When User enters order number "SHIPPED_001"
    And User clicks the "Track Order" button
    Then The status message should display "Order SHIPPED_001 is already shipped and cannot be cancelled."
    And The status message should not contain "I understand you want to cancel an order."
