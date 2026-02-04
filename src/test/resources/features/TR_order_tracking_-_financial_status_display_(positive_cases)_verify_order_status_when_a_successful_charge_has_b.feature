Feature: Order Tracking - Financial Status Display (Positive Cases)

  Scenario: Verify order status when a successful charge has been applied
    Given User is on the order tracking page
    When User enters order number "ORD1002"
    And User clicks the "Track Order" button
    Then The status message should display "Order charged successfully for $150.00."
