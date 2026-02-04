Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks a valid order
    Given User is on the order tracking page
    When User enters order number "ORD12345"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD12345 is Shipped."
