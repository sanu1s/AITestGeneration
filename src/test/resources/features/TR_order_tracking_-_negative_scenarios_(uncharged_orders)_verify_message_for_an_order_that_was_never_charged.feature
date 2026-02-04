Feature: Order Tracking - Negative Scenarios (Uncharged Orders)

  Scenario: Verify message for an order that was never charged
    Given User is on the order tracking page
    When User enters order number "UNCHARGED_ORDER_XYZ"
    And User clicks the "Track Order" button
    Then The status message should display "You were not refunded because you were not charged."
