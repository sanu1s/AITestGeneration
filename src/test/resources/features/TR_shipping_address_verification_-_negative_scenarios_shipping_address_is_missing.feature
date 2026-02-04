Feature: Shipping Address Verification - Negative Scenarios

  Scenario: Shipping address is missing
    Given User is on the "Order Details" page for order "ORD999"
    When User views the shipping address section
    Then The shipping address field should be empty
    And An error message "Shipping address not found" should be displayed
