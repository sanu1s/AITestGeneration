Feature: Order Tracking for Representatives - Negative Scenarios

  Scenario: Tracking a Non-Existent Order
    Given the representative is on the order tracking page "https://example.com/trackorder"
    When the representative enters order number "NONEXISTENT"
    And clicks the "Track Order" button
    Then the error message should display "Order NONEXISTENT not found."
