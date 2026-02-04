Feature: Order Tracking for Representatives - Negative Scenarios

  Scenario: Tracking an Order with Invalid Format
    Given the representative is on the order tracking page "https://example.com/trackorder"
    When the representative enters order number "INV#ID"
    And clicks the "Track Order" button
    Then the error message should display "Invalid order number format. Please use alphanumeric characters only."
