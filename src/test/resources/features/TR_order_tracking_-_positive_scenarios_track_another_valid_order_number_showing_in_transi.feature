Feature: Order Tracking - Positive Scenarios

  Scenario: Track another valid order number showing in transit status
    Given User is on the order tracking page
    When User enters order number "ORD987654321"
    And User clicks the "Track Order" button
    Then The order status should display "Order in transit"
