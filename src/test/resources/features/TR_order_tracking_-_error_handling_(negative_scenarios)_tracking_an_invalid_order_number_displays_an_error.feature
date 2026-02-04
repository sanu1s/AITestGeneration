Feature: Order Tracking - Error Handling (Negative Scenarios)

  Scenario: Tracking an invalid order number displays an error
    Given User is on the order tracking page
    When User enters order number "INVALID123"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found. Please check the number."
