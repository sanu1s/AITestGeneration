Feature: Order Tracking - Financial Status Display (Positive Cases)

  Scenario: Verify order status when no charge or reservation is present
    Given User is on the order tracking page
    When User enters order number "ORD1001"
    And User clicks the "Track Order" button
    Then The status message should display "Order confirmed. No financial transactions yet."
