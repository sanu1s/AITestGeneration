Feature: Shipping Address Verification - Positive Scenarios

  Scenario: Successfully verify another shipping address change
    Given User is on the "Order Details" page for order "ORD123"
    When User views the shipping address section
    Then The displayed shipping address should be "123 Main St Anytown, CA 90210"
    And A confirmation message "Shipping address confirmed" should be visible
