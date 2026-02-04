Feature: Shipping Address Verification - Negative Scenarios

  Scenario: Displayed address does not match expected address
    Given User is on the "Order Details" page for order "ORD456"
    When User views the shipping address section
    Then The displayed shipping address should not be "61 S Ward Ave Rumson, NJ 07760"
    And An error message "Address does not match expected value" should be displayed
