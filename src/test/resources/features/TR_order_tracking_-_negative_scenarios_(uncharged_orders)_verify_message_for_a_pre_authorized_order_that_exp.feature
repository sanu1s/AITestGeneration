Feature: Order Tracking - Negative Scenarios (Uncharged Orders)

  Scenario: Verify message for a pre-authorized order that expired without charge
    Given User is on the order tracking page
    When User enters order number "EXPIRED_PREAUTH_ABC"
    And User clicks the "Track Order" button
    Then The status message should display "You were not refunded because you were not charged."
