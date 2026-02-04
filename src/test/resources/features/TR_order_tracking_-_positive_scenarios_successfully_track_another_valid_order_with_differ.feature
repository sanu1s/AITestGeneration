Feature: Order Tracking - Positive Scenarios

  Scenario: Successfully track another valid order with different status
    Given User is on the order tracking page "https://example.com/track"
    When User enters order number "ORD67890"
    And User clicks the "Track Order" button
    Then The status message should display "Order ORD67890 found. Status: Delivered."
