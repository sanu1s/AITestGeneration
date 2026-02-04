Feature: Order Tracking - Positive Scenarios - Successful Delivery

  Scenario: Verify in-transit status for another valid order number
    Given User is on the order tracking page
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 is currently in transit."
