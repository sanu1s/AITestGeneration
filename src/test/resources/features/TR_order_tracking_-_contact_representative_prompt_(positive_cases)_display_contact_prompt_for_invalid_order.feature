Feature: Order Tracking - Contact Representative Prompt (Positive Cases)

  Scenario: Display contact prompt for invalid order
    Given User is on the order tracking page
    When User enters order number "ORD-INVALID-001"
    And User clicks the Track Order button
    Then The error message should display "Order not found. Speak to a representative."
