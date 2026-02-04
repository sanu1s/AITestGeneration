Feature: Order Tracking - Negative Scenarios for Estimated Delivery Date

  Scenario: User enters an order number with no delivery date available
    Given User is on the order tracking page "https://example.com/track-order"
    When User enters order number "PENDING987"
    And User clicks the "Track Order" button
    Then The status message should display "Order PENDING987 Status: Pending, Delivery date not yet available."
