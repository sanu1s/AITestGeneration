Feature: Back-ordered Item Payment - Negative Test Cases

  Scenario: Verify error message when attempting to charge a back-ordered item
    Given User is on the order tracking page "https://example.com/trackorder"
    When User enters order number "BO_CHARGE_003"
    And User clicks the "Track Order" button
    Then The error message should display "Payment failed: Back-ordered items are not charged."
