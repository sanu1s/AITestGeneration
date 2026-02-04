Feature: Order Tracking - Verify Shipping Address Updates (Positive)

  Scenario: Successfully display updated shipping address
    Given User is on the order tracking page
    When User enters order number "ORD-SUP-001"
    And User clicks the "Track Order" button
    Then The result should contain text "Shipping address: 100 New Street, Apt 5, Metropolis, 12345"
