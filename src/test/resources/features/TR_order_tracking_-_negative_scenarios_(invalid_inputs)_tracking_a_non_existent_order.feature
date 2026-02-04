Feature: Order Tracking - Negative Scenarios (Invalid Inputs)

  Scenario: Tracking a Non-Existent Order
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "NONEXISTENT"
    And User clicks the "Track Order" button
    Then The error message should display "Order not found."
