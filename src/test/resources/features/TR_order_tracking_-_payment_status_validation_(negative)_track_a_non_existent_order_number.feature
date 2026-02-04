Feature: Order Tracking - Payment Status Validation (Negative)

  Scenario: Track a non-existent order number
    Given user is on the order tracking page
    When user enters order number "NONEXISTENT1" for a non-existent order
    And user clicks the "Track Order" button
    Then the error message should display "Order not found. Please verify the order number."
