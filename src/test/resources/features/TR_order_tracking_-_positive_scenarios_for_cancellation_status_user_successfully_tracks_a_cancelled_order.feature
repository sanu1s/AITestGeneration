Feature: Order Tracking - Positive Scenarios for Cancellation Status

  Scenario: User successfully tracks a cancelled order
    Given User is on the order tracking page
    When User enters order number "0061845946"
    And User clicks the "Track Order" button
    Then The status message should display "Order 0061845946 has been successfully cancelled."
