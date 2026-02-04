Feature: Order Cancellation Information Prompt (Negative Scenarios)

  Scenario: User does not receive cancellation prompt for an invalid order number
    Given User is on the order tracking page
    When User enters order number "INVALID_000"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check your order number."
    And The status message should not contain "I understand you want to cancel an order."
