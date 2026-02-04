Feature: Order Tracking - Verify Shipping Address Updates (Positive)

  Scenario: Successfully display another updated shipping address
    Given User is on the order tracking page
    When User enters order number "ORD-SUP-002"
    And User clicks the "Track Order" button
    Then The result should contain text "Shipping address: 200 Green Lane, Building B, Gotham, 67890"
