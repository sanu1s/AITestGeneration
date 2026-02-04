Feature: Shipping Address Verification - Positive Scenarios

  Scenario: Successfully verify shipping address change
    Given User is on the "Order Details" page for order "ORD789"
    When User views the shipping address section
    Then The displayed shipping address should be "61 S Ward Ave Rumson, NJ 07760"
    And A confirmation message "Shipping address confirmed" should be visible
