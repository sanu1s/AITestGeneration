Feature: Order Tracking - Positive Scenarios

  Scenario: User successfully tracks another valid order
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Your order ORD67890 is Delivered."
