Feature: Order Tracking - Negative Scenarios - Carrier Not Received

  Scenario: Verify status when another order is not yet picked up by carrier
    Given User is on the order tracking page
    When User enters order number "ORD90123"
    And User clicks the "Track Order" button
    Then The status message should display "Carrier has not yet picked up the package."
